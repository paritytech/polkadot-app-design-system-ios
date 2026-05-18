import UIKit

public protocol TypographyFamily: AnyObject, Sendable {
    var id: String { get }

    func font(family: TypographyFontFamily, weight: TypographyFontWeight, size: CGFloat) -> UIFont
}
