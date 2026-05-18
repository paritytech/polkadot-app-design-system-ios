import SwiftUI

extension ShapeStyle where Self == Color {
    static func app(_ token: ThemeColor) -> Color {
        Color(uiColor: UIColor.app(token))
    }
}
