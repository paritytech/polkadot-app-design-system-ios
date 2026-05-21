import Keystore_iOS
import UIKit

@MainActor
public protocol TypographyManagerProtocol: AnyObject {
    var family: TypographyFamily { get }
    var selection: TypographySelection { get }

    func select(_ selection: TypographySelection)
    func setup(scene: UIWindowScene)

    func font(for style: TypographyStyle) -> UIFont
}

@MainActor
public final class TypographyManager {
    public static let shared: TypographyManagerProtocol = TypographyManager()

    public private(set) var family: TypographyFamily
    public private(set) var selection: TypographySelection

    private let settingsManager: SettingsManagerProtocol

    private let scenes = NSHashTable<UIWindowScene>.weakObjects()

    init(
        selection: TypographySelection? = nil,
        settingsManager: SettingsManagerProtocol = SettingsManager.shared
    ) {
        FontRegistrar.registerBundledFontsIfNeeded()
        self.settingsManager = settingsManager
        let resolved = selection
            ?? Self.loadPersisted(from: settingsManager)
            ?? TypographyFamiliesRegistry.default
        self.selection = resolved
        family = TypographyFamiliesRegistry.makeFamily(resolved)
    }
}

private extension TypographyManager {
    static let storageKey = "designSystem.typography.selection"

    static func loadPersisted(from settingsManager: SettingsManagerProtocol) -> TypographySelection? {
        guard let raw = settingsManager.string(for: storageKey) else { return nil }
        return TypographySelection(rawValue: raw)
    }

    func persist() {
        settingsManager.set(value: selection.rawValue, for: Self.storageKey)
    }

    func updateScenes(with selection: TypographySelection) {
        scenes.allObjects.forEach { $0.traitOverrides.appTypography = selection }
    }
}

extension TypographyManager: TypographyManagerProtocol {
    public func select(_ selection: TypographySelection) {
        guard selection != self.selection else { return }

        self.selection = selection

        family = TypographyFamiliesRegistry.makeFamily(selection)
        updateScenes(with: selection)
        persist()
    }

    public func setup(scene: UIWindowScene) {
        scenes.add(scene)
        scene.traitOverrides.appTypography = selection
    }

    public func font(for style: TypographyStyle) -> UIFont {
        let spec = style.resolvedSpec

        return family.font(
            family: spec.family,
            weight: spec.weight,
            size: spec.size
        )
    }
}
