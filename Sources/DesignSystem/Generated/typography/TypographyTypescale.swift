import CoreGraphics

public extension TypographyStyle {
    enum Typescale: String, CaseIterable, Hashable {
        case displayExtraLarge
        case displayLarge
        case displayMedium
        case displaySmall
        case headlineLarge
        case headlineMedium
        case headlineSmall
        case titleExtraLarge
        case titleLarge
        case titleMedium
        case titleSmall
        case titleTiny
        case paragraphLarge
        case paragraphMedium
        case paragraphSmall
        case bodyLarge
        case bodyMedium
        case bodySmall
        case labelMedium
        case labelSmall
        case emojiLarge
        case emojiMedium
        case emojiSmall
    }
}

public extension TypographyStyle.Typescale {
    var spec: TypographyStyleSpec {
        switch self {
        case .displayExtraLarge: .init(family: .accent, size: 64, weight: .bold, lineHeight: 80, tracking: -1)
        case .displayLarge: .init(family: .accent, size: 56, weight: .bold, lineHeight: 80, tracking: -1)
        case .displayMedium: .init(family: .accent, size: 48, weight: .bold, lineHeight: 64, tracking: -1)
        case .displaySmall: .init(family: .accent, size: 36, weight: .bold, lineHeight: 48, tracking: -0.5)
        case .headlineLarge: .init(family: .accent, size: 32, weight: .bold, lineHeight: 40, tracking: -0.5)
        case .headlineMedium: .init(family: .accent, size: 28, weight: .bold, lineHeight: 36, tracking: 0)
        case .headlineSmall: .init(family: .accent, size: 24, weight: .bold, lineHeight: 32, tracking: 0)
        case .titleExtraLarge: .init(family: .accent, size: 20, weight: .bold, lineHeight: 28, tracking: 0)
        case .titleLarge: .init(family: .accent, size: 18, weight: .bold, lineHeight: 24, tracking: 0)
        case .titleMedium: .init(
                family: .accent,
                size: 16,
                weight: .semiBold,
                emphasizedWeight: .bold,
                lineHeight: 24,
                tracking: 0
            )
        case .titleSmall: .init(
                family: .accent,
                size: 14,
                weight: .semiBold,
                emphasizedWeight: .bold,
                lineHeight: 20,
                tracking: 0
            )
        case .titleTiny: .init(
                family: .accent,
                size: 12,
                weight: .semiBold,
                emphasizedWeight: .bold,
                lineHeight: 16,
                tracking: 0
            )
        case .paragraphLarge: .init(
                family: .sans,
                monoFamily: .mono,
                size: 16,
                weight: .regular,
                lineHeight: 20,
                tracking: 0
            )
        case .paragraphMedium: .init(
                family: .sans,
                monoFamily: .mono,
                size: 14,
                weight: .regular,
                lineHeight: 18,
                tracking: 0
            )
        case .paragraphSmall: .init(
                family: .sans,
                monoFamily: .mono,
                size: 12,
                weight: .regular,
                lineHeight: 16,
                tracking: 0
            )
        case .bodyLarge: .init(
                family: .sans,
                size: 16,
                weight: .regular,
                emphasizedWeight: .medium,
                lineHeight: 24,
                tracking: 0
            )
        case .bodyMedium: .init(
                family: .sans,
                size: 14,
                weight: .regular,
                emphasizedWeight: .medium,
                lineHeight: 20,
                tracking: 0
            )
        case .bodySmall: .init(
                family: .sans,
                size: 12,
                weight: .regular,
                emphasizedWeight: .medium,
                lineHeight: 16,
                tracking: 0
            )
        case .labelMedium: .init(
                family: .sans,
                monoFamily: .mono,
                size: 12,
                weight: .medium,
                emphasizedWeight: .semiBold,
                lineHeight: 16,
                tracking: 0
            )
        case .labelSmall: .init(
                family: .sans,
                monoFamily: .mono,
                size: 10,
                weight: .medium,
                emphasizedWeight: .semiBold,
                lineHeight: 14,
                tracking: 0
            )
        case .emojiLarge: .init(family: .sans, size: 80, weight: .regular, lineHeight: 80, tracking: 0)
        case .emojiMedium: .init(family: .sans, size: 32, weight: .regular, lineHeight: 32, tracking: 0)
        case .emojiSmall: .init(family: .mono, size: 20, weight: .regular, lineHeight: 20, tracking: 0)
        }
    }
}

public extension TypographyStyle {
    static var displayExtraLarge: TypographyStyle { .init(typescale: .displayExtraLarge) }
    static var displayLarge: TypographyStyle { .init(typescale: .displayLarge) }
    static var displayMedium: TypographyStyle { .init(typescale: .displayMedium) }
    static var displaySmall: TypographyStyle { .init(typescale: .displaySmall) }

    static var headlineLarge: TypographyStyle { .init(typescale: .headlineLarge) }
    static var headlineMedium: TypographyStyle { .init(typescale: .headlineMedium) }
    static var headlineSmall: TypographyStyle { .init(typescale: .headlineSmall) }

    static var titleExtraLarge: TypographyStyle { .init(typescale: .titleExtraLarge) }
    static var titleLarge: TypographyStyle { .init(typescale: .titleLarge) }
    static var titleMedium: TypographyStyle { .init(typescale: .titleMedium) }
    static var titleSmall: TypographyStyle { .init(typescale: .titleSmall) }
    static var titleTiny: TypographyStyle { .init(typescale: .titleTiny) }

    static var paragraphLarge: TypographyStyle { .init(typescale: .paragraphLarge) }
    static var paragraphMedium: TypographyStyle { .init(typescale: .paragraphMedium) }
    static var paragraphSmall: TypographyStyle { .init(typescale: .paragraphSmall) }

    static var bodyLarge: TypographyStyle { .init(typescale: .bodyLarge) }
    static var bodyMedium: TypographyStyle { .init(typescale: .bodyMedium) }
    static var bodySmall: TypographyStyle { .init(typescale: .bodySmall) }

    static var labelMedium: TypographyStyle { .init(typescale: .labelMedium) }
    static var labelSmall: TypographyStyle { .init(typescale: .labelSmall) }

    static var emojiLarge: TypographyStyle { .init(typescale: .emojiLarge) }
    static var emojiMedium: TypographyStyle { .init(typescale: .emojiMedium) }
    static var emojiSmall: TypographyStyle { .init(typescale: .emojiSmall) }
}
