import SwiftUI

public extension ShapeStyle where Self == Color {
    // MARK: Foreground

    static var fgError: Color { .app(.fgError) }
    static var fgLinkHover: Color { .app(.fgLinkHover) }
    static var fgLink: Color { .app(.fgLink) }
    static var fgTertiary: Color { .app(.fgTertiary) }
    static var fgSecondary: Color { .app(.fgSecondary) }
    static var fgWarning: Color { .app(.fgWarning) }
    static var fgSuccess: Color { .app(.fgSuccess) }
    static var fgPrimary: Color { .app(.fgPrimary) }
    static var fgPrimaryInverted: Color { .app(.fgPrimaryInverted) }
    static var fgSecondaryInverted: Color { .app(.fgSecondaryInverted) }
    static var fgTertiaryInverted: Color { .app(.fgTertiaryInverted) }
    static var fgStaticWhite: Color { .app(.fgStaticWhite) }
    static var fgSecondaryHover: Color { .app(.fgSecondaryHover) }
    static var fgSecondaryInvertedHover: Color { .app(.fgSecondaryInvertedHover) }

    // MARK: Background — surface

    static var bgSurfaceMain: Color { .app(.bgSurfaceMain) }
    static var bgSurfaceContainer: Color { .app(.bgSurfaceContainer) }
    static var bgSurfaceContainerInverted: Color { .app(.bgSurfaceContainerInverted) }
    static var bgSurfaceNestedInverted: Color { .app(.bgSurfaceNestedInverted) }
    static var bgSurfaceOverlay: Color { .app(.bgSurfaceOverlay) }
    static var bgSurfaceNested: Color { .app(.bgSurfaceNested) }

    // MARK: Background — selection

    static var bgSelectionContainerHover: Color { .app(.bgSelectionContainerHover) }
    static var bgSelectionContainerActive: Color { .app(.bgSelectionContainerActive) }
    static var bgSelectionContainerHoverInverted: Color { .app(.bgSelectionContainerHoverInverted) }
    static var bgSelectionContainerActiveInverted: Color { .app(.bgSelectionContainerActiveInverted) }

    // MARK: Background — status

    static var bgStatusError: Color { .app(.bgStatusError) }
    static var bgStatusWarning: Color { .app(.bgStatusWarning) }
    static var bgStatusErrorHover: Color { .app(.bgStatusErrorHover) }
    static var bgStatusWarningHover: Color { .app(.bgStatusWarningHover) }

    // MARK: Background — accent

    static var bgAccent: Color { .app(.bgAccent) }

    // MARK: Background — action

    static var bgActionPrimary: Color { .app(.bgActionPrimary) }
    static var bgActionSecondary: Color { .app(.bgActionSecondary) }
    static var bgActionPrimaryInverted: Color { .app(.bgActionPrimaryInverted) }
    static var bgActionSecondaryInverted: Color { .app(.bgActionSecondaryInverted) }
    static var bgActionPrimaryHover: Color { .app(.bgActionPrimaryHover) }
    static var bgActionSecondaryHover: Color { .app(.bgActionSecondaryHover) }
    static var bgActionPrimaryInvertedHover: Color { .app(.bgActionPrimaryInvertedHover) }
    static var bgActionSecondaryInvertedHover: Color { .app(.bgActionSecondaryInvertedHover) }
    static var bgActionTertiary: Color { .app(.bgActionTertiary) }
    static var bgActionTertiaryHover: Color { .app(.bgActionTertiaryHover) }
    static var bgActionTertiaryInverted: Color { .app(.bgActionTertiaryInverted) }
    static var bgActionTertiaryInvertedHover: Color { .app(.bgActionTertiaryInvertedHover) }
    static var bgActionActive: Color { .app(.bgActionActive) }

    // MARK: Background — illustration

    static var bgIllustrationDark: Color { .app(.bgIllustrationDark) }
    static var bgIllustrationLight: Color { .app(.bgIllustrationLight) }

    // MARK: Stroke

    static var strokePrimary: Color { .app(.strokePrimary) }
    static var strokeError: Color { .app(.strokeError) }
    static var strokeWarning: Color { .app(.strokeWarning) }
    static var strokeSuccess: Color { .app(.strokeSuccess) }
    static var strokeTertiary: Color { .app(.strokeTertiary) }
    static var strokePrimaryInverted: Color { .app(.strokePrimaryInverted) }
    static var strokeSecondary: Color { .app(.strokeSecondary) }
    static var strokeCutout: Color { .app(.strokeCutout) }

    // MARK: Focus

    static var focusError: Color { .app(.focusError) }
    static var focusRing: Color { .app(.focusRing) }

    // MARK: Shadow

    static var shadowSoft: Color { .app(.shadowSoft) }
    static var shadowMedium: Color { .app(.shadowMedium) }

    // MARK: Avatar — background

    static var avatarBgAmethyst: Color { .app(.avatarBgAmethyst) }
    static var avatarBgOpal: Color { .app(.avatarBgOpal) }
    static var avatarBgTurquoise: Color { .app(.avatarBgTurquoise) }
    static var avatarBgOnyx: Color { .app(.avatarBgOnyx) }
    static var avatarBgPearl: Color { .app(.avatarBgPearl) }
    static var avatarBgEmerald: Color { .app(.avatarBgEmerald) }
    static var avatarBgTopaz: Color { .app(.avatarBgTopaz) }
    static var avatarBgRuby: Color { .app(.avatarBgRuby) }
    static var avatarBgSapphire: Color { .app(.avatarBgSapphire) }
    static var avatarBgGarnet: Color { .app(.avatarBgGarnet) }

    // MARK: Avatar — foreground

    static var avatarFgAmethyst: Color { .app(.avatarFgAmethyst) }
    static var avatarFgOpal: Color { .app(.avatarFgOpal) }
    static var avatarFgTurquoise: Color { .app(.avatarFgTurquoise) }
    static var avatarFgOnyx: Color { .app(.avatarFgOnyx) }
    static var avatarFgPearl: Color { .app(.avatarFgPearl) }
    static var avatarFgEmerald: Color { .app(.avatarFgEmerald) }
    static var avatarFgTopaz: Color { .app(.avatarFgTopaz) }
    static var avatarFgRuby: Color { .app(.avatarFgRuby) }
    static var avatarFgSapphire: Color { .app(.avatarFgSapphire) }
    static var avatarFgGarnet: Color { .app(.avatarFgGarnet) }

    // MARK: Gradient

    static var gradientNavigationOverlayStart: Color { .app(.gradientNavigationOverlayStart) }
    static var gradientNavigationOverlayEnd: Color { .app(.gradientNavigationOverlayEnd) }
}
