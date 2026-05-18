import UIKit

public final class PolkadotDefaultTypography: TypographyFamily, @unchecked Sendable {
    public let id = "polkadotDefault"

    public init() {}

    public func font(family: TypographyFontFamily, weight: TypographyFontWeight, size: CGFloat) -> UIFont {
        let name = postscriptName(family: family, weight: weight)
        if let font = UIFont(name: name, size: size) {
            return font
        }
        return UIFont.systemFont(ofSize: size, weight: weight.uiFontWeight)
    }
}

private extension PolkadotDefaultTypography {
    func postscriptName(family: TypographyFontFamily, weight: TypographyFontWeight) -> String {
        switch family {
        case .sans: "Inter-\(suffix(weight))"
        case .mono: "MartianMono-\(suffix(weight))"
        case .accent: "Manrope-\(suffix(weight))"
        }
    }

    func suffix(_ weight: TypographyFontWeight) -> String {
        switch weight {
        case .thin: "Thin"
        case .extraLight: "ExtraLight"
        case .light: "Light"
        case .regular: "Regular"
        case .medium: "Medium"
        case .semiBold: "SemiBold"
        case .bold: "Bold"
        case .extraBold: "ExtraBold"
        case .black: "Black"
        }
    }
}
