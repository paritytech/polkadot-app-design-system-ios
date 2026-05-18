import UIKit

public struct DSTypographyTrait: UITraitDefinition {
    public static let defaultValue: TypographySelection = TypographyFamiliesRegistry.default
    public static let identifier = "design-system.app-typography"
    // Piggy-back on color flag to trigger UIKit invalidation
    // and hosted-SwiftUI re-renders on typography changes.
    public static let affectsColorAppearance = true
}

public extension UITraitCollection {
    var appTypography: TypographySelection { self[DSTypographyTrait.self] }
}

public extension UIMutableTraits {
    var appTypography: TypographySelection {
        get { self[DSTypographyTrait.self] }
        set { self[DSTypographyTrait.self] = newValue }
    }
}
