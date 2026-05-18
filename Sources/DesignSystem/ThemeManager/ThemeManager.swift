import Keystore_iOS
import UIKit

@MainActor
public protocol ThemeManagerProtocol: AnyObject {
    var theme: Theme { get }
    var mode: ThemeMode { get }

    func select(_ mode: ThemeMode)
    func setup(scene: UIWindowScene)
}

@MainActor
public final class ThemeManager {
    public static let shared: ThemeManagerProtocol = ThemeManager()

    public private(set) var theme: Theme
    public private(set) var mode: ThemeMode

    private let settingsManager: SettingsManagerProtocol

    private let scenes = NSHashTable<UIWindowScene>.weakObjects()

    private var currentSelection: ThemeSelection {
        Self.resolveSelection(mode: mode)
    }

    init(
        mode: ThemeMode? = nil,
        settingsManager: SettingsManagerProtocol = SettingsManager.shared
    ) {
        self.settingsManager = settingsManager
        let resolved = mode
            ?? Self.loadPersisted(from: settingsManager)
            ?? .app(ThemesRegistry.default)
        self.mode = resolved
        theme = ThemesRegistry.makeTheme(Self.resolveSelection(mode: resolved))
    }
}

private extension ThemeManager {
    static let storageKey = "designSystem.theme.selection"

    static func loadPersisted(from settingsManager: SettingsManagerProtocol) -> ThemeMode? {
        guard
            let raw = settingsManager.string(for: storageKey),
            let selection = ThemeSelection(rawValue: raw)
        else { return nil }

        return .app(selection)
    }

    func persist() {
        switch mode {
        case let .app(selection):
            settingsManager.set(value: selection.rawValue, for: Self.storageKey)
        }
    }

    func refreshTheme() {
        let selection = Self.resolveSelection(mode: mode)
        let next = ThemesRegistry.makeTheme(selection)

        guard next.id != theme.id else { return }

        theme = next
        updateScenes(with: selection)
    }

    func updateScenes(with selection: ThemeSelection) {
        scenes.allObjects.forEach { $0.traitOverrides.appTheme = selection }
    }

    static func resolveSelection(mode: ThemeMode) -> ThemeSelection {
        switch mode {
        case let .app(selection):
            selection
        }
    }
}

extension ThemeManager: ThemeManagerProtocol {
    public func select(_ mode: ThemeMode) {
        guard mode != self.mode else { return }

        self.mode = mode

        refreshTheme()
        persist()
    }

    public func setup(scene: UIWindowScene) {
        scenes.add(scene)
        scene.traitOverrides.appTheme = currentSelection
    }
}
