import UIKit

public protocol Theme: AnyObject, Sendable {
    var id: String { get }
    var statusBarStyle: UIStatusBarStyle { get }
    var colors: ThemeColorsProtocol { get }
}

open class CommonTheme: Theme, @unchecked Sendable {
    public let id: String
    public let statusBarStyle: UIStatusBarStyle
    public let colors: ThemeColorsProtocol

    public init(
        id: String,
        statusBarStyle: UIStatusBarStyle,
        colors: ThemeColorsProtocol
    ) {
        self.id = id
        self.statusBarStyle = statusBarStyle
        self.colors = colors
    }
}
