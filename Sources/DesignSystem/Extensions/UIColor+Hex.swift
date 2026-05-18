import UIKit

extension UIColor {
    private static let maxFloatColorPart = CGFloat(255)
    private static let maxHexColorPart = 0xFF

    convenience init(red: Int, green: Int, blue: Int, alpha: Int = UIColor.maxHexColorPart) {
        let maxColorPart = Int(UIColor.maxFloatColorPart)
        assert(red >= 0 && red <= maxColorPart, "Invalid red component")
        assert(green >= 0 && green <= maxColorPart, "Invalid green component")
        assert(blue >= 0 && blue <= maxColorPart, "Invalid blue component")
        assert(alpha >= 0 && alpha <= maxColorPart, "Invalid alpha component")

        self.init(
            red: CGFloat(red) / UIColor.maxFloatColorPart,
            green: CGFloat(green) / UIColor.maxFloatColorPart,
            blue: CGFloat(blue) / UIColor.maxFloatColorPart,
            alpha: CGFloat(alpha) / UIColor.maxFloatColorPart
        )
    }

    public convenience init(rgbHex hex: Int) {
        self.init(
            red: (hex >> 16) & UIColor.maxHexColorPart,
            green: (hex >> 8) & UIColor.maxHexColorPart,
            blue: hex & UIColor.maxHexColorPart
        )
    }

    public convenience init(rgbaHex hex: Int) {
        self.init(
            red: (hex >> 24) & UIColor.maxHexColorPart,
            green: (hex >> 16) & UIColor.maxHexColorPart,
            blue: (hex >> 8) & UIColor.maxHexColorPart,
            alpha: hex & UIColor.maxHexColorPart
        )
    }
}
