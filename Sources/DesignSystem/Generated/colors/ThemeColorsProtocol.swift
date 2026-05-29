import UIKit

public protocol ThemeColorsProtocol: Sendable {
    // MARK: Foreground

    var fgError: UIColor { get }
    var fgLinkHover: UIColor { get }
    var fgLink: UIColor { get }
    var fgTertiary: UIColor { get }
    var fgSecondary: UIColor { get }
    var fgWarning: UIColor { get }
    var fgSuccess: UIColor { get }
    var fgPrimary: UIColor { get }
    var fgPrimaryInverted: UIColor { get }
    var fgSecondaryInverted: UIColor { get }
    var fgTertiaryInverted: UIColor { get }
    var fgStaticWhite: UIColor { get }
    var fgSecondaryHover: UIColor { get }
    var fgSecondaryInvertedHover: UIColor { get }
    var fgDisabled: UIColor { get }
    var fgAccent: UIColor { get }
    var fgAccentInverted: UIColor { get }

    // MARK: Background — surface

    var bgSurfaceMain: UIColor { get }
    var bgSurfaceContainer: UIColor { get }
    var bgSurfaceContainerInverted: UIColor { get }
    var bgSurfaceNestedInverted: UIColor { get }
    var bgSurfaceOverlay: UIColor { get }
    var bgSurfaceNested: UIColor { get }
    var bgSurfaceAccent: UIColor { get }
    var bgSurfaceAccentInverted: UIColor { get }
    var bgSurfaceAccentSoft: UIColor { get }
    var bgSurfaceAccentSoftInverted: UIColor { get }

    // MARK: Background — selection

    var bgSelectionContainerHover: UIColor { get }
    var bgSelectionContainerActive: UIColor { get }
    var bgSelectionContainerHoverInverted: UIColor { get }
    var bgSelectionContainerActiveInverted: UIColor { get }

    // MARK: Background — status

    var bgStatusError: UIColor { get }
    var bgStatusWarning: UIColor { get }
    var bgStatusErrorHover: UIColor { get }
    var bgStatusWarningHover: UIColor { get }
    var bgStatusSuccess: UIColor { get }
    var bgStatusSuccessHover: UIColor { get }

    // MARK: Background — accent

    var bgAccent: UIColor { get }

    // MARK: Background — action

    var bgActionPrimary: UIColor { get }
    var bgActionSecondary: UIColor { get }
    var bgActionPrimaryInverted: UIColor { get }
    var bgActionSecondaryInverted: UIColor { get }
    var bgActionPrimaryHover: UIColor { get }
    var bgActionSecondaryHover: UIColor { get }
    var bgActionPrimaryInvertedHover: UIColor { get }
    var bgActionSecondaryInvertedHover: UIColor { get }
    var bgActionTertiary: UIColor { get }
    var bgActionTertiaryHover: UIColor { get }
    var bgActionTertiaryInverted: UIColor { get }
    var bgActionTertiaryInvertedHover: UIColor { get }
    var bgActionActive: UIColor { get }
    var bgActionDisabled: UIColor { get }
    var bgActionError: UIColor { get }
    var bgActionAccent: UIColor { get }
    var bgActionAccentInverted: UIColor { get }

    // MARK: Background — illustration

    var bgIllustrationDark: UIColor { get }
    var bgIllustrationLight: UIColor { get }
    var bgIllustrationDarkMuted: UIColor { get }
    var bgIllustrationLightMuted: UIColor { get }

    // MARK: Stroke

    var strokePrimary: UIColor { get }
    var strokeError: UIColor { get }
    var strokeWarning: UIColor { get }
    var strokeSuccess: UIColor { get }
    var strokeTertiary: UIColor { get }
    var strokePrimaryInverted: UIColor { get }
    var strokeSecondary: UIColor { get }
    var strokeCutout: UIColor { get }
    var strokeAccent: UIColor { get }
    var strokeAccentSoft: UIColor { get }

    // MARK: Focus

    var focusError: UIColor { get }
    var focusRing: UIColor { get }

    // MARK: Shadow

    var shadowSoft: UIColor { get }
    var shadowMedium: UIColor { get }

    // MARK: Illustrative — background

    var illustrativeBgAmethyst: UIColor { get }
    var illustrativeBgOpal: UIColor { get }
    var illustrativeBgTurquoise: UIColor { get }
    var illustrativeBgOnyx: UIColor { get }
    var illustrativeBgPearl: UIColor { get }
    var illustrativeBgEmerald: UIColor { get }
    var illustrativeBgTopaz: UIColor { get }
    var illustrativeBgRuby: UIColor { get }
    var illustrativeBgSapphire: UIColor { get }
    var illustrativeBgGarnet: UIColor { get }
    var illustrativeBgBlack: UIColor { get }
    var illustrativeBgWhite: UIColor { get }

    // MARK: Illustrative — foreground

    var illustrativeFgAmethyst: UIColor { get }
    var illustrativeFgOpal: UIColor { get }
    var illustrativeFgTurquoise: UIColor { get }
    var illustrativeFgOnyx: UIColor { get }
    var illustrativeFgPearl: UIColor { get }
    var illustrativeFgEmerald: UIColor { get }
    var illustrativeFgTopaz: UIColor { get }
    var illustrativeFgRuby: UIColor { get }
    var illustrativeFgSapphire: UIColor { get }
    var illustrativeFgGarnet: UIColor { get }
    var illustrativeFgAmethyst2: UIColor { get }

    // MARK: Gradient

    var gradientNavigationOverlayStart: UIColor { get }
    var gradientNavigationOverlayEnd: UIColor { get }

    func color(_ color: ThemeColor) -> UIColor
}

public enum ThemeColor: String, Hashable, CaseIterable {
    // Foreground
    case fgError
    case fgLinkHover
    case fgLink
    case fgTertiary
    case fgSecondary
    case fgWarning
    case fgSuccess
    case fgPrimary
    case fgPrimaryInverted
    case fgSecondaryInverted
    case fgTertiaryInverted
    case fgStaticWhite
    case fgSecondaryHover
    case fgSecondaryInvertedHover
    case fgDisabled
    case fgAccent
    case fgAccentInverted

    // Background — surface
    case bgSurfaceMain
    case bgSurfaceContainer
    case bgSurfaceContainerInverted
    case bgSurfaceNestedInverted
    case bgSurfaceOverlay
    case bgSurfaceNested
    case bgSurfaceAccent
    case bgSurfaceAccentInverted
    case bgSurfaceAccentSoft
    case bgSurfaceAccentSoftInverted

    // Background — selection
    case bgSelectionContainerHover
    case bgSelectionContainerActive
    case bgSelectionContainerHoverInverted
    case bgSelectionContainerActiveInverted

    // Background — status
    case bgStatusError
    case bgStatusWarning
    case bgStatusErrorHover
    case bgStatusWarningHover
    case bgStatusSuccess
    case bgStatusSuccessHover

    // Background — accent
    case bgAccent

    // Background — action
    case bgActionPrimary
    case bgActionSecondary
    case bgActionPrimaryInverted
    case bgActionSecondaryInverted
    case bgActionPrimaryHover
    case bgActionSecondaryHover
    case bgActionPrimaryInvertedHover
    case bgActionSecondaryInvertedHover
    case bgActionTertiary
    case bgActionTertiaryHover
    case bgActionTertiaryInverted
    case bgActionTertiaryInvertedHover
    case bgActionActive
    case bgActionDisabled
    case bgActionError
    case bgActionAccent
    case bgActionAccentInverted

    // Background — illustration
    case bgIllustrationDark
    case bgIllustrationLight
    case bgIllustrationDarkMuted
    case bgIllustrationLightMuted

    // Stroke
    case strokePrimary
    case strokeError
    case strokeWarning
    case strokeSuccess
    case strokeTertiary
    case strokePrimaryInverted
    case strokeSecondary
    case strokeCutout
    case strokeAccent
    case strokeAccentSoft

    // Focus
    case focusError
    case focusRing

    // Shadow
    case shadowSoft
    case shadowMedium

    // Illustrative — background
    case illustrativeBgAmethyst
    case illustrativeBgOpal
    case illustrativeBgTurquoise
    case illustrativeBgOnyx
    case illustrativeBgPearl
    case illustrativeBgEmerald
    case illustrativeBgTopaz
    case illustrativeBgRuby
    case illustrativeBgSapphire
    case illustrativeBgGarnet
    case illustrativeBgBlack
    case illustrativeBgWhite

    // Illustrative — foreground
    case illustrativeFgAmethyst
    case illustrativeFgOpal
    case illustrativeFgTurquoise
    case illustrativeFgOnyx
    case illustrativeFgPearl
    case illustrativeFgEmerald
    case illustrativeFgTopaz
    case illustrativeFgRuby
    case illustrativeFgSapphire
    case illustrativeFgGarnet
    case illustrativeFgAmethyst2

    // Gradient
    case gradientNavigationOverlayStart
    case gradientNavigationOverlayEnd
}

public extension ThemeColorsProtocol {
    func color(_ color: ThemeColor) -> UIColor {
        switch color {
        case .fgError: fgError
        case .fgLinkHover: fgLinkHover
        case .fgLink: fgLink
        case .fgTertiary: fgTertiary
        case .fgSecondary: fgSecondary
        case .fgWarning: fgWarning
        case .fgSuccess: fgSuccess
        case .fgPrimary: fgPrimary
        case .fgPrimaryInverted: fgPrimaryInverted
        case .fgSecondaryInverted: fgSecondaryInverted
        case .fgTertiaryInverted: fgTertiaryInverted
        case .fgStaticWhite: fgStaticWhite
        case .fgSecondaryHover: fgSecondaryHover
        case .fgSecondaryInvertedHover: fgSecondaryInvertedHover
        case .fgDisabled: fgDisabled
        case .fgAccent: fgAccent
        case .fgAccentInverted: fgAccentInverted
        case .bgSurfaceMain: bgSurfaceMain
        case .bgSurfaceContainer: bgSurfaceContainer
        case .bgSurfaceContainerInverted: bgSurfaceContainerInverted
        case .bgSurfaceNestedInverted: bgSurfaceNestedInverted
        case .bgSurfaceOverlay: bgSurfaceOverlay
        case .bgSurfaceNested: bgSurfaceNested
        case .bgSurfaceAccent: bgSurfaceAccent
        case .bgSurfaceAccentInverted: bgSurfaceAccentInverted
        case .bgSurfaceAccentSoft: bgSurfaceAccentSoft
        case .bgSurfaceAccentSoftInverted: bgSurfaceAccentSoftInverted
        case .bgSelectionContainerHover: bgSelectionContainerHover
        case .bgSelectionContainerActive: bgSelectionContainerActive
        case .bgSelectionContainerHoverInverted: bgSelectionContainerHoverInverted
        case .bgSelectionContainerActiveInverted: bgSelectionContainerActiveInverted
        case .bgStatusError: bgStatusError
        case .bgStatusWarning: bgStatusWarning
        case .bgStatusErrorHover: bgStatusErrorHover
        case .bgStatusWarningHover: bgStatusWarningHover
        case .bgStatusSuccess: bgStatusSuccess
        case .bgStatusSuccessHover: bgStatusSuccessHover
        case .bgAccent: bgAccent
        case .bgActionPrimary: bgActionPrimary
        case .bgActionSecondary: bgActionSecondary
        case .bgActionPrimaryInverted: bgActionPrimaryInverted
        case .bgActionSecondaryInverted: bgActionSecondaryInverted
        case .bgActionPrimaryHover: bgActionPrimaryHover
        case .bgActionSecondaryHover: bgActionSecondaryHover
        case .bgActionPrimaryInvertedHover: bgActionPrimaryInvertedHover
        case .bgActionSecondaryInvertedHover: bgActionSecondaryInvertedHover
        case .bgActionTertiary: bgActionTertiary
        case .bgActionTertiaryHover: bgActionTertiaryHover
        case .bgActionTertiaryInverted: bgActionTertiaryInverted
        case .bgActionTertiaryInvertedHover: bgActionTertiaryInvertedHover
        case .bgActionActive: bgActionActive
        case .bgActionDisabled: bgActionDisabled
        case .bgActionError: bgActionError
        case .bgActionAccent: bgActionAccent
        case .bgActionAccentInverted: bgActionAccentInverted
        case .bgIllustrationDark: bgIllustrationDark
        case .bgIllustrationLight: bgIllustrationLight
        case .bgIllustrationDarkMuted: bgIllustrationDarkMuted
        case .bgIllustrationLightMuted: bgIllustrationLightMuted
        case .strokePrimary: strokePrimary
        case .strokeError: strokeError
        case .strokeWarning: strokeWarning
        case .strokeSuccess: strokeSuccess
        case .strokeTertiary: strokeTertiary
        case .strokePrimaryInverted: strokePrimaryInverted
        case .strokeSecondary: strokeSecondary
        case .strokeCutout: strokeCutout
        case .strokeAccent: strokeAccent
        case .strokeAccentSoft: strokeAccentSoft
        case .focusError: focusError
        case .focusRing: focusRing
        case .shadowSoft: shadowSoft
        case .shadowMedium: shadowMedium
        case .illustrativeBgAmethyst: illustrativeBgAmethyst
        case .illustrativeBgOpal: illustrativeBgOpal
        case .illustrativeBgTurquoise: illustrativeBgTurquoise
        case .illustrativeBgOnyx: illustrativeBgOnyx
        case .illustrativeBgPearl: illustrativeBgPearl
        case .illustrativeBgEmerald: illustrativeBgEmerald
        case .illustrativeBgTopaz: illustrativeBgTopaz
        case .illustrativeBgRuby: illustrativeBgRuby
        case .illustrativeBgSapphire: illustrativeBgSapphire
        case .illustrativeBgGarnet: illustrativeBgGarnet
        case .illustrativeBgBlack: illustrativeBgBlack
        case .illustrativeBgWhite: illustrativeBgWhite
        case .illustrativeFgAmethyst: illustrativeFgAmethyst
        case .illustrativeFgOpal: illustrativeFgOpal
        case .illustrativeFgTurquoise: illustrativeFgTurquoise
        case .illustrativeFgOnyx: illustrativeFgOnyx
        case .illustrativeFgPearl: illustrativeFgPearl
        case .illustrativeFgEmerald: illustrativeFgEmerald
        case .illustrativeFgTopaz: illustrativeFgTopaz
        case .illustrativeFgRuby: illustrativeFgRuby
        case .illustrativeFgSapphire: illustrativeFgSapphire
        case .illustrativeFgGarnet: illustrativeFgGarnet
        case .illustrativeFgAmethyst2: illustrativeFgAmethyst2
        case .gradientNavigationOverlayStart: gradientNavigationOverlayStart
        case .gradientNavigationOverlayEnd: gradientNavigationOverlayEnd
        }
    }
}
