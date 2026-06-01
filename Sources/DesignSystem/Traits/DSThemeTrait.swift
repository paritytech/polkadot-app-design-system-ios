import SwiftUI
import UIKit

public struct DSThemeTrait: UITraitDefinition {
    public static let defaultValue: ThemeSelection = ThemesRegistry.default
    public static let affectsColorAppearance = true
    public static let identifier = "design-system.app-theme"
}

public extension UITraitCollection {
    var appTheme: ThemeSelection { self[DSThemeTrait.self] }
}

public extension UIMutableTraits {
    var appTheme: ThemeSelection {
        get { self[DSThemeTrait.self] }
        set { self[DSThemeTrait.self] = newValue }
    }
}

// MARK: - SwiftUI bridge

public struct DSThemeTraitBridge: UITraitBridgedEnvironmentKey {
    public static let defaultValue: ThemeSelection = ThemesRegistry.default

    public static func read(from traitCollection: UITraitCollection) -> ThemeSelection {
        traitCollection.appTheme
    }

    public static func write(to mutableTraits: inout UIMutableTraits, value: ThemeSelection) {
        mutableTraits.appTheme = value
    }
}

public extension EnvironmentValues {
    var appTheme: ThemeSelection {
        get { self[DSThemeTraitBridge.self] }
        set { self[DSThemeTraitBridge.self] = newValue }
    }
}
