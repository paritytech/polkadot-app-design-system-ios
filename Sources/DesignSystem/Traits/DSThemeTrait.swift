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
