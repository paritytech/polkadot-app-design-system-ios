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
    static var fgDisabled: Color { .app(.fgDisabled) }
    static var fgAccent: Color { .app(.fgAccent) }
    static var fgAccentInverted: Color { .app(.fgAccentInverted) }

    // MARK: Background — surface

    static var bgSurfaceMain: Color { .app(.bgSurfaceMain) }
    static var bgSurfaceContainer: Color { .app(.bgSurfaceContainer) }
    static var bgSurfaceContainerInverted: Color { .app(.bgSurfaceContainerInverted) }
    static var bgSurfaceNestedInverted: Color { .app(.bgSurfaceNestedInverted) }
    static var bgSurfaceOverlay: Color { .app(.bgSurfaceOverlay) }
    static var bgSurfaceNested: Color { .app(.bgSurfaceNested) }
    static var bgSurfaceAccent: Color { .app(.bgSurfaceAccent) }
    static var bgSurfaceAccentInverted: Color { .app(.bgSurfaceAccentInverted) }
    static var bgSurfaceAccentSoft: Color { .app(.bgSurfaceAccentSoft) }
    static var bgSurfaceAccentSoftInverted: Color { .app(.bgSurfaceAccentSoftInverted) }

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
    static var bgStatusSuccess: Color { .app(.bgStatusSuccess) }
    static var bgStatusSuccessHover: Color { .app(.bgStatusSuccessHover) }

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
    static var bgActionDisabled: Color { .app(.bgActionDisabled) }
    static var bgActionError: Color { .app(.bgActionError) }
    static var bgActionAccent: Color { .app(.bgActionAccent) }
    static var bgActionAccentInverted: Color { .app(.bgActionAccentInverted) }

    // MARK: Background — illustration

    static var bgIllustrationDark: Color { .app(.bgIllustrationDark) }
    static var bgIllustrationLight: Color { .app(.bgIllustrationLight) }
    static var bgIllustrationDarkMuted: Color { .app(.bgIllustrationDarkMuted) }
    static var bgIllustrationLightMuted: Color { .app(.bgIllustrationLightMuted) }

    // MARK: Stroke

    static var strokePrimary: Color { .app(.strokePrimary) }
    static var strokeError: Color { .app(.strokeError) }
    static var strokeWarning: Color { .app(.strokeWarning) }
    static var strokeSuccess: Color { .app(.strokeSuccess) }
    static var strokeTertiary: Color { .app(.strokeTertiary) }
    static var strokePrimaryInverted: Color { .app(.strokePrimaryInverted) }
    static var strokeSecondary: Color { .app(.strokeSecondary) }
    static var strokeCutout: Color { .app(.strokeCutout) }
    static var strokeAccent: Color { .app(.strokeAccent) }
    static var strokeAccentSoft: Color { .app(.strokeAccentSoft) }

    // MARK: Focus

    static var focusError: Color { .app(.focusError) }
    static var focusRing: Color { .app(.focusRing) }

    // MARK: Shadow

    static var shadowSoft: Color { .app(.shadowSoft) }
    static var shadowMedium: Color { .app(.shadowMedium) }

    // MARK: Illustrative — background

    static var illustrativeBgAmethyst: Color { .app(.illustrativeBgAmethyst) }
    static var illustrativeBgOpal: Color { .app(.illustrativeBgOpal) }
    static var illustrativeBgTurquoise: Color { .app(.illustrativeBgTurquoise) }
    static var illustrativeBgOnyx: Color { .app(.illustrativeBgOnyx) }
    static var illustrativeBgPearl: Color { .app(.illustrativeBgPearl) }
    static var illustrativeBgEmerald: Color { .app(.illustrativeBgEmerald) }
    static var illustrativeBgTopaz: Color { .app(.illustrativeBgTopaz) }
    static var illustrativeBgRuby: Color { .app(.illustrativeBgRuby) }
    static var illustrativeBgSapphire: Color { .app(.illustrativeBgSapphire) }
    static var illustrativeBgGarnet: Color { .app(.illustrativeBgGarnet) }
    static var illustrativeBgBlack: Color { .app(.illustrativeBgBlack) }
    static var illustrativeBgWhite: Color { .app(.illustrativeBgWhite) }

    // MARK: Illustrative — foreground

    static var illustrativeFgAmethyst: Color { .app(.illustrativeFgAmethyst) }
    static var illustrativeFgOpal: Color { .app(.illustrativeFgOpal) }
    static var illustrativeFgTurquoise: Color { .app(.illustrativeFgTurquoise) }
    static var illustrativeFgOnyx: Color { .app(.illustrativeFgOnyx) }
    static var illustrativeFgPearl: Color { .app(.illustrativeFgPearl) }
    static var illustrativeFgEmerald: Color { .app(.illustrativeFgEmerald) }
    static var illustrativeFgTopaz: Color { .app(.illustrativeFgTopaz) }
    static var illustrativeFgRuby: Color { .app(.illustrativeFgRuby) }
    static var illustrativeFgSapphire: Color { .app(.illustrativeFgSapphire) }
    static var illustrativeFgGarnet: Color { .app(.illustrativeFgGarnet) }
    static var illustrativeFgAmethyst2: Color { .app(.illustrativeFgAmethyst2) }

    // MARK: Gradient

    static var gradientNavigationOverlayStart: Color { .app(.gradientNavigationOverlayStart) }
    static var gradientNavigationOverlayEnd: Color { .app(.gradientNavigationOverlayEnd) }
}
