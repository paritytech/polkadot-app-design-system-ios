import UIKit

public extension TypographyFontWeight {
    var uiFontWeight: UIFont.Weight {
        switch self {
        case .thin: .thin
        case .extraLight: .ultraLight
        case .light: .light
        case .regular: .regular
        case .medium: .medium
        case .semiBold: .semibold
        case .bold: .bold
        case .extraBold: .heavy
        case .black: .black
        }
    }
}
