import Keystore_iOS
import os
import UIKit

public protocol TypographyManagerProtocol: AnyObject, Sendable {
    var family: TypographyFamily { get }
    var selection: TypographySelection { get }

    @MainActor func select(_ selection: TypographySelection)
    @MainActor func setup(scene: UIWindowScene)

    func font(for style: TypographyStyle) -> UIFont
}

public final class TypographyManager: @unchecked Sendable {
    public static let shared: TypographyManagerProtocol = TypographyManager()

    private let state: OSAllocatedUnfairLock<State>
    private let settingsManager: SettingsManagerProtocol
    private let scenes = NSHashTable<UIWindowScene>.weakObjects()

    public var family: TypographyFamily { state.withLock { $0.family } }
    public var selection: TypographySelection { state.withLock { $0.selection } }

    init(
        selection: TypographySelection? = nil,
        settingsManager: SettingsManagerProtocol = SettingsManager.shared
    ) {
        FontRegistrar.registerBundledFontsIfNeeded()
        self.settingsManager = settingsManager
        let resolved = selection
            ?? Self.loadPersisted(from: settingsManager)
            ?? TypographyFamiliesRegistry.default
        state = OSAllocatedUnfairLock(
            initialState: State(
                family: TypographyFamiliesRegistry.makeFamily(resolved),
                selection: resolved
            )
        )
    }
}

private extension TypographyManager {
    static let storageKey = "designSystem.typography.selection"

    static func loadPersisted(from settingsManager: SettingsManagerProtocol) -> TypographySelection? {
        guard let raw = settingsManager.string(for: storageKey) else { return nil }
        return TypographySelection(rawValue: raw)
    }

    func persist(_ selection: TypographySelection) {
        settingsManager.set(value: selection.rawValue, for: Self.storageKey)
    }

    @MainActor func updateScenes(with selection: TypographySelection) {
        scenes.allObjects.forEach { $0.traitOverrides.appTypography = selection }
    }
}

extension TypographyManager: TypographyManagerProtocol {
    public func select(_ selection: TypographySelection) {
        guard selection != self.selection else { return }

        let newFamily = TypographyFamiliesRegistry.makeFamily(selection)
        state.withLock {
            $0.selection = selection
            $0.family = newFamily
        }

        updateScenes(with: selection)
        persist(selection)
    }

    public func setup(scene: UIWindowScene) {
        scenes.add(scene)
        scene.traitOverrides.appTypography = selection
    }

    public func font(for style: TypographyStyle) -> UIFont {
        let family = state.withLock { $0.family }
        let spec = style.resolvedSpec

        return family.font(
            family: spec.family,
            weight: spec.weight,
            size: spec.size
        )
    }
}

private extension TypographyManager {
    struct State {
        var family: TypographyFamily
        var selection: TypographySelection
    }
}
