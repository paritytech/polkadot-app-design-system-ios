import UIKit

extension UIColor {
    static func app(_ token: ThemeColor) -> UIColor {
        UIColor { traits in
            ThemesRegistry.makeTheme(traits.appTheme).colors.color(token)
        }
    }
}
