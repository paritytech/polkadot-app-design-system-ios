import UIKit

@MainActor
public extension UIFont {
    // MARK: Display

    static var displayExtraLarge: UIFont { .app(.displayExtraLarge) }
    static var displayLarge: UIFont { .app(.displayLarge) }
    static var displayMedium: UIFont { .app(.displayMedium) }
    static var displaySmall: UIFont { .app(.displaySmall) }

    // MARK: Headline

    static var headlineLarge: UIFont { .app(.headlineLarge) }
    static var headlineMedium: UIFont { .app(.headlineMedium) }
    static var headlineSmall: UIFont { .app(.headlineSmall) }

    // MARK: Title

    static var titleExtraLarge: UIFont { .app(.titleExtraLarge) }
    static var titleLarge: UIFont { .app(.titleLarge) }
    static var titleMedium: UIFont { .app(.titleMedium) }
    static var titleSmall: UIFont { .app(.titleSmall) }
    static var titleTiny: UIFont { .app(.titleTiny) }
    static var titleMediumEmphasized: UIFont { .app(.titleMediumEmphasized) }
    static var titleSmallEmphasized: UIFont { .app(.titleSmallEmphasized) }
    static var titleTinyEmphasized: UIFont { .app(.titleTinyEmphasized) }

    // MARK: Paragraph

    static var paragraphLarge: UIFont { .app(.paragraphLarge) }
    static var paragraphMedium: UIFont { .app(.paragraphMedium) }
    static var paragraphSmall: UIFont { .app(.paragraphSmall) }
    static var paragraphLargeMono: UIFont { .app(.paragraphLargeMono) }
    static var paragraphMediumMono: UIFont { .app(.paragraphMediumMono) }
    static var paragraphSmallMono: UIFont { .app(.paragraphSmallMono) }

    // MARK: Body

    static var bodyLarge: UIFont { .app(.bodyLarge) }
    static var bodyMedium: UIFont { .app(.bodyMedium) }
    static var bodySmall: UIFont { .app(.bodySmall) }
    static var bodyLargeEmphasized: UIFont { .app(.bodyLargeEmphasized) }
    static var bodyMediumEmphasized: UIFont { .app(.bodyMediumEmphasized) }
    static var bodySmallEmphasized: UIFont { .app(.bodySmallEmphasized) }

    // MARK: Label

    static var labelMedium: UIFont { .app(.labelMedium) }
    static var labelSmall: UIFont { .app(.labelSmall) }
    static var labelMediumEmphasized: UIFont { .app(.labelMediumEmphasized) }
    static var labelMediumCAPS: UIFont { .app(.labelMediumCAPS) }
    static var labelSmallEmphasized: UIFont { .app(.labelSmallEmphasized) }
    static var labelSmallCAPS: UIFont { .app(.labelSmallCAPS) }

    // MARK: Emoji

    static var emojiLarge: UIFont { .app(.emojiLarge) }
    static var emojiMedium: UIFont { .app(.emojiMedium) }
    static var emojiSmall: UIFont { .app(.emojiSmall) }
}
