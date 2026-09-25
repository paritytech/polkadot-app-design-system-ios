import CoreText
import UIKit

public final class PolkadotDefaultTypography: TypographyFamily, @unchecked Sendable {
    public let id = "polkadotDefault"

    public init() {}

    public func font(family: TypographyFontFamily, weight: TypographyFontWeight, size: CGFloat) -> UIFont {
        let name = postscriptName(family: family, weight: weight)
        guard let font = UIFont(name: name, size: size) else {
            return UIFont.systemFont(ofSize: size, weight: weight.uiFontWeight)
        }
        return Self.smallCapsFamilies.contains(family) ? font.withForcedSmallCaps() : font
    }
}

private extension PolkadotDefaultTypography {
    static let smallCapsFamilies: Set<TypographyFontFamily> = [.smallCaps]

    func postscriptName(family: TypographyFontFamily, weight: TypographyFontWeight) -> String {
        switch family {
        case .sans: "Inter-\(suffix(weight))"
        case .mono: "MartianMono-\(suffix(weight))"
        case .accent: "Manrope-\(suffix(weight))"
        case .smallCaps: "SourceSans3-\(suffix(weight))"
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

private extension UIFont {
    func withForcedSmallCaps() -> UIFont {
        let features: [[UIFontDescriptor.FeatureKey: Int]] = [
            [.type: kUpperCaseType, .selector: kUpperCaseSmallCapsSelector],
            [.type: kLowerCaseType, .selector: kLowerCaseSmallCapsSelector]
        ]
        let descriptor = fontDescriptor.addingAttributes([.featureSettings: features])
        return UIFont(descriptor: descriptor, size: pointSize)
    }
}
