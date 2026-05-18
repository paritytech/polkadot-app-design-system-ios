import UIKit

@MainActor
public extension UIFont {
    static func app(_ style: TypographyStyle) -> UIFont {
        TypographyManager.shared.font(for: style)
    }
}
