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

    // MARK: Background — surface

    var bgSurfaceMain: UIColor { get }
    var bgSurfaceContainer: UIColor { get }
    var bgSurfaceContainerInverted: UIColor { get }
    var bgSurfaceNestedInverted: UIColor { get }
    var bgSurfaceOverlay: UIColor { get }
    var bgSurfaceNested: UIColor { get }

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

    // MARK: Background — illustration

    var bgIllustrationDark: UIColor { get }
    var bgIllustrationLight: UIColor { get }

    // MARK: Stroke

    var strokePrimary: UIColor { get }
    var strokeError: UIColor { get }
    var strokeWarning: UIColor { get }
    var strokeSuccess: UIColor { get }
    var strokeTertiary: UIColor { get }
    var strokePrimaryInverted: UIColor { get }
    var strokeSecondary: UIColor { get }
    var strokeCutout: UIColor { get }

    // MARK: Focus

    var focusError: UIColor { get }
    var focusRing: UIColor { get }

    // MARK: Shadow

    var shadowSoft: UIColor { get }
    var shadowMedium: UIColor { get }

    // MARK: Avatar — background

    var avatarBgAmethyst: UIColor { get }
    var avatarBgOpal: UIColor { get }
    var avatarBgTurquoise: UIColor { get }
    var avatarBgOnyx: UIColor { get }
    var avatarBgPearl: UIColor { get }
    var avatarBgEmerald: UIColor { get }
    var avatarBgTopaz: UIColor { get }
    var avatarBgRuby: UIColor { get }
    var avatarBgSapphire: UIColor { get }
    var avatarBgGarnet: UIColor { get }

    // MARK: Avatar — foreground

    var avatarFgAmethyst: UIColor { get }
    var avatarFgOpal: UIColor { get }
    var avatarFgTurquoise: UIColor { get }
    var avatarFgOnyx: UIColor { get }
    var avatarFgPearl: UIColor { get }
    var avatarFgEmerald: UIColor { get }
    var avatarFgTopaz: UIColor { get }
    var avatarFgRuby: UIColor { get }
    var avatarFgSapphire: UIColor { get }
    var avatarFgGarnet: UIColor { get }

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

    // Background — surface
    case bgSurfaceMain
    case bgSurfaceContainer
    case bgSurfaceContainerInverted
    case bgSurfaceNestedInverted
    case bgSurfaceOverlay
    case bgSurfaceNested

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

    // Background — illustration
    case bgIllustrationDark
    case bgIllustrationLight

    // Stroke
    case strokePrimary
    case strokeError
    case strokeWarning
    case strokeSuccess
    case strokeTertiary
    case strokePrimaryInverted
    case strokeSecondary
    case strokeCutout

    // Focus
    case focusError
    case focusRing

    // Shadow
    case shadowSoft
    case shadowMedium

    // Avatar — background
    case avatarBgAmethyst
    case avatarBgOpal
    case avatarBgTurquoise
    case avatarBgOnyx
    case avatarBgPearl
    case avatarBgEmerald
    case avatarBgTopaz
    case avatarBgRuby
    case avatarBgSapphire
    case avatarBgGarnet

    // Avatar — foreground
    case avatarFgAmethyst
    case avatarFgOpal
    case avatarFgTurquoise
    case avatarFgOnyx
    case avatarFgPearl
    case avatarFgEmerald
    case avatarFgTopaz
    case avatarFgRuby
    case avatarFgSapphire
    case avatarFgGarnet
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
        case .bgSurfaceMain: bgSurfaceMain
        case .bgSurfaceContainer: bgSurfaceContainer
        case .bgSurfaceContainerInverted: bgSurfaceContainerInverted
        case .bgSurfaceNestedInverted: bgSurfaceNestedInverted
        case .bgSurfaceOverlay: bgSurfaceOverlay
        case .bgSurfaceNested: bgSurfaceNested
        case .bgSelectionContainerHover: bgSelectionContainerHover
        case .bgSelectionContainerActive: bgSelectionContainerActive
        case .bgSelectionContainerHoverInverted: bgSelectionContainerHoverInverted
        case .bgSelectionContainerActiveInverted: bgSelectionContainerActiveInverted
        case .bgStatusError: bgStatusError
        case .bgStatusWarning: bgStatusWarning
        case .bgStatusErrorHover: bgStatusErrorHover
        case .bgStatusWarningHover: bgStatusWarningHover
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
        case .bgIllustrationDark: bgIllustrationDark
        case .bgIllustrationLight: bgIllustrationLight
        case .strokePrimary: strokePrimary
        case .strokeError: strokeError
        case .strokeWarning: strokeWarning
        case .strokeSuccess: strokeSuccess
        case .strokeTertiary: strokeTertiary
        case .strokePrimaryInverted: strokePrimaryInverted
        case .strokeSecondary: strokeSecondary
        case .strokeCutout: strokeCutout
        case .focusError: focusError
        case .focusRing: focusRing
        case .shadowSoft: shadowSoft
        case .shadowMedium: shadowMedium
        case .avatarBgAmethyst: avatarBgAmethyst
        case .avatarBgOpal: avatarBgOpal
        case .avatarBgTurquoise: avatarBgTurquoise
        case .avatarBgOnyx: avatarBgOnyx
        case .avatarBgPearl: avatarBgPearl
        case .avatarBgEmerald: avatarBgEmerald
        case .avatarBgTopaz: avatarBgTopaz
        case .avatarBgRuby: avatarBgRuby
        case .avatarBgSapphire: avatarBgSapphire
        case .avatarBgGarnet: avatarBgGarnet
        case .avatarFgAmethyst: avatarFgAmethyst
        case .avatarFgOpal: avatarFgOpal
        case .avatarFgTurquoise: avatarFgTurquoise
        case .avatarFgOnyx: avatarFgOnyx
        case .avatarFgPearl: avatarFgPearl
        case .avatarFgEmerald: avatarFgEmerald
        case .avatarFgTopaz: avatarFgTopaz
        case .avatarFgRuby: avatarFgRuby
        case .avatarFgSapphire: avatarFgSapphire
        case .avatarFgGarnet: avatarFgGarnet
        }
    }
}
