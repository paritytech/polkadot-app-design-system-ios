import UIKit

public extension UIColor {
    // MARK: Foreground

    static let fgError = app(.fgError)
    static let fgLinkHover = app(.fgLinkHover)
    static let fgLink = app(.fgLink)
    static let fgTertiary = app(.fgTertiary)
    static let fgSecondary = app(.fgSecondary)
    static let fgWarning = app(.fgWarning)
    static let fgSuccess = app(.fgSuccess)
    static let fgPrimary = app(.fgPrimary)
    static let fgPrimaryInverted = app(.fgPrimaryInverted)
    static let fgSecondaryInverted = app(.fgSecondaryInverted)
    static let fgTertiaryInverted = app(.fgTertiaryInverted)
    static let fgStaticWhite = app(.fgStaticWhite)
    static let fgSecondaryHover = app(.fgSecondaryHover)
    static let fgSecondaryInvertedHover = app(.fgSecondaryInvertedHover)
    static let fgDisabled = app(.fgDisabled)
    static let fgAccent = app(.fgAccent)
    static let fgAccentInverted = app(.fgAccentInverted)

    // MARK: Background — surface

    static let bgSurfaceMain = app(.bgSurfaceMain)
    static let bgSurfaceContainer = app(.bgSurfaceContainer)
    static let bgSurfaceContainerInverted = app(.bgSurfaceContainerInverted)
    static let bgSurfaceNestedInverted = app(.bgSurfaceNestedInverted)
    static let bgSurfaceOverlay = app(.bgSurfaceOverlay)
    static let bgSurfaceNested = app(.bgSurfaceNested)
    static let bgSurfaceAccent = app(.bgSurfaceAccent)
    static let bgSurfaceAccentInverted = app(.bgSurfaceAccentInverted)
    static let bgSurfaceAccentSoft = app(.bgSurfaceAccentSoft)
    static let bgSurfaceAccentSoftInverted = app(.bgSurfaceAccentSoftInverted)

    // MARK: Background — selection

    static let bgSelectionContainerHover = app(.bgSelectionContainerHover)
    static let bgSelectionContainerActive = app(.bgSelectionContainerActive)
    static let bgSelectionContainerHoverInverted = app(.bgSelectionContainerHoverInverted)
    static let bgSelectionContainerActiveInverted = app(.bgSelectionContainerActiveInverted)

    // MARK: Background — status

    static let bgStatusError = app(.bgStatusError)
    static let bgStatusWarning = app(.bgStatusWarning)
    static let bgStatusErrorHover = app(.bgStatusErrorHover)
    static let bgStatusWarningHover = app(.bgStatusWarningHover)
    static let bgStatusSuccess = app(.bgStatusSuccess)
    static let bgStatusSuccessHover = app(.bgStatusSuccessHover)

    // MARK: Background — accent

    static let bgAccent = app(.bgAccent)

    // MARK: Background — action

    static let bgActionPrimary = app(.bgActionPrimary)
    static let bgActionSecondary = app(.bgActionSecondary)
    static let bgActionPrimaryInverted = app(.bgActionPrimaryInverted)
    static let bgActionSecondaryInverted = app(.bgActionSecondaryInverted)
    static let bgActionPrimaryHover = app(.bgActionPrimaryHover)
    static let bgActionSecondaryHover = app(.bgActionSecondaryHover)
    static let bgActionPrimaryInvertedHover = app(.bgActionPrimaryInvertedHover)
    static let bgActionSecondaryInvertedHover = app(.bgActionSecondaryInvertedHover)
    static let bgActionTertiary = app(.bgActionTertiary)
    static let bgActionTertiaryHover = app(.bgActionTertiaryHover)
    static let bgActionTertiaryInverted = app(.bgActionTertiaryInverted)
    static let bgActionTertiaryInvertedHover = app(.bgActionTertiaryInvertedHover)
    static let bgActionActive = app(.bgActionActive)
    static let bgActionDisabled = app(.bgActionDisabled)
    static let bgActionError = app(.bgActionError)
    static let bgActionAccent = app(.bgActionAccent)
    static let bgActionAccentInverted = app(.bgActionAccentInverted)

    // MARK: Background — illustration

    static let bgIllustrationDark = app(.bgIllustrationDark)
    static let bgIllustrationLight = app(.bgIllustrationLight)
    static let bgIllustrationDarkMuted = app(.bgIllustrationDarkMuted)
    static let bgIllustrationLightMuted = app(.bgIllustrationLightMuted)

    // MARK: Stroke

    static let strokePrimary = app(.strokePrimary)
    static let strokeError = app(.strokeError)
    static let strokeWarning = app(.strokeWarning)
    static let strokeSuccess = app(.strokeSuccess)
    static let strokeTertiary = app(.strokeTertiary)
    static let strokePrimaryInverted = app(.strokePrimaryInverted)
    static let strokeSecondary = app(.strokeSecondary)
    static let strokeCutout = app(.strokeCutout)
    static let strokeAccent = app(.strokeAccent)
    static let strokeAccentSoft = app(.strokeAccentSoft)

    // MARK: Focus

    static let focusError = app(.focusError)
    static let focusRing = app(.focusRing)

    // MARK: Shadow

    static let shadowSoft = app(.shadowSoft)
    static let shadowMedium = app(.shadowMedium)

    // MARK: Illustrative — background

    static let illustrativeBgAmethyst = app(.illustrativeBgAmethyst)
    static let illustrativeBgOpal = app(.illustrativeBgOpal)
    static let illustrativeBgTurquoise = app(.illustrativeBgTurquoise)
    static let illustrativeBgOnyx = app(.illustrativeBgOnyx)
    static let illustrativeBgPearl = app(.illustrativeBgPearl)
    static let illustrativeBgEmerald = app(.illustrativeBgEmerald)
    static let illustrativeBgTopaz = app(.illustrativeBgTopaz)
    static let illustrativeBgRuby = app(.illustrativeBgRuby)
    static let illustrativeBgSapphire = app(.illustrativeBgSapphire)
    static let illustrativeBgGarnet = app(.illustrativeBgGarnet)
    static let illustrativeBgBlack = app(.illustrativeBgBlack)
    static let illustrativeBgWhite = app(.illustrativeBgWhite)

    // MARK: Illustrative — foreground

    static let illustrativeFgAmethyst = app(.illustrativeFgAmethyst)
    static let illustrativeFgOpal = app(.illustrativeFgOpal)
    static let illustrativeFgTurquoise = app(.illustrativeFgTurquoise)
    static let illustrativeFgOnyx = app(.illustrativeFgOnyx)
    static let illustrativeFgPearl = app(.illustrativeFgPearl)
    static let illustrativeFgEmerald = app(.illustrativeFgEmerald)
    static let illustrativeFgTopaz = app(.illustrativeFgTopaz)
    static let illustrativeFgRuby = app(.illustrativeFgRuby)
    static let illustrativeFgSapphire = app(.illustrativeFgSapphire)
    static let illustrativeFgGarnet = app(.illustrativeFgGarnet)
    static let illustrativeFgAmethyst2 = app(.illustrativeFgAmethyst2)

    // MARK: Gradient

    static let gradientNavigationOverlayStart = app(.gradientNavigationOverlayStart)
    static let gradientNavigationOverlayEnd = app(.gradientNavigationOverlayEnd)
}
