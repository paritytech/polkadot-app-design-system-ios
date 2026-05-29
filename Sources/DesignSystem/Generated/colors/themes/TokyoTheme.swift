import UIKit

public final class TokyoTheme: CommonTheme, @unchecked Sendable {
    public init() {
        super.init(
            id: "tokyo",
            statusBarStyle: .lightContent,
            colors: Colors()
        )
    }

    public final class Colors: ThemeColorsProtocol, @unchecked Sendable {
        // MARK: Foreground

        public let fgError = UIColor(rgbHex: 0xD9363E)
        public let fgLinkHover = UIColor(rgbHex: 0x4D8DFF)
        public let fgLink = UIColor(rgbHex: 0x2F6FEA)
        public let fgTertiary = UIColor(rgbHex: 0x8C8F98)
        public let fgSecondary = UIColor(rgbHex: 0x585B62)
        public let fgWarning = UIColor(rgbHex: 0xD17F00)
        public let fgSuccess = UIColor(rgbHex: 0x16A34A)
        public let fgPrimary = UIColor(rgbHex: 0x0B0C0F)
        public let fgPrimaryInverted = UIColor(rgbHex: 0xF4F4F5)
        public let fgSecondaryInverted = UIColor(rgbHex: 0x8C8F98)
        public let fgTertiaryInverted = UIColor(rgbHex: 0x585B62)
        public let fgStaticWhite = UIColor(rgbHex: 0xFFFFFF)
        public let fgSecondaryHover = UIColor(rgbHex: 0x0B0C0F)
        public let fgSecondaryInvertedHover = UIColor(rgbHex: 0xDADADA)
        public let fgDisabled = UIColor(rgbHex: 0x8C8F98)
        public let fgAccent = UIColor(rgbHex: 0x9F1239)
        public let fgAccentInverted = UIColor(rgbHex: 0x9F1239)

        // MARK: Background — surface

        public let bgSurfaceMain = UIColor(rgbHex: 0xF7F7F8)
        public let bgSurfaceContainer = UIColor(rgbHex: 0xFFFFFF)
        public let bgSurfaceContainerInverted = UIColor(rgbHex: 0x1A1A1A)
        public let bgSurfaceNestedInverted = UIColor(rgbHex: 0x23252A)
        public let bgSurfaceOverlay = UIColor(rgbaHex: 0x0000_007A)
        public let bgSurfaceNested = UIColor(rgbHex: 0xF7F7F8)
        public let bgSurfaceAccent = UIColor(rgbHex: 0x9F1239)
        public let bgSurfaceAccentInverted = UIColor(rgbHex: 0x1A1A1A)
        public let bgSurfaceAccentSoft = UIColor(rgbHex: 0xFFE4E6)
        public let bgSurfaceAccentSoftInverted = UIColor(rgbHex: 0xFFE4E6)

        // MARK: Background — selection

        public let bgSelectionContainerHover = UIColor(rgbHex: 0xF7F7F8)
        public let bgSelectionContainerActive = UIColor(rgbHex: 0xF4F4F5)
        public let bgSelectionContainerHoverInverted = UIColor(rgbHex: 0x23252A)
        public let bgSelectionContainerActiveInverted = UIColor(rgbHex: 0x1A1B20)

        // MARK: Background — status

        public let bgStatusError = UIColor(rgbHex: 0xD9363E)
        public let bgStatusWarning = UIColor(rgbHex: 0xF59E0B)
        public let bgStatusErrorHover = UIColor(rgbHex: 0xB4232F)
        public let bgStatusWarningHover = UIColor(rgbHex: 0xFFBB33)
        public let bgStatusSuccess = UIColor(rgbHex: 0x16A34A)
        public let bgStatusSuccessHover = UIColor(rgbHex: 0x12803C)

        // MARK: Background — accent

        public let bgAccent = UIColor(rgbHex: 0x4D8DFF)

        // MARK: Background — action

        public let bgActionPrimary = UIColor(rgbHex: 0x0B0C0F)
        public let bgActionSecondary = UIColor(rgbHex: 0xDADBE0)
        public let bgActionPrimaryInverted = UIColor(rgbHex: 0xFFFFFF)
        public let bgActionSecondaryInverted = UIColor(rgbHex: 0x23252A)
        public let bgActionPrimaryHover = UIColor(rgbHex: 0x23252A)
        public let bgActionSecondaryHover = UIColor(rgbHex: 0xA9ABB3)
        public let bgActionPrimaryInvertedHover = UIColor(rgbHex: 0xF4F4F5)
        public let bgActionSecondaryInvertedHover = UIColor(rgbHex: 0x404249)
        public let bgActionTertiary = UIColor(rgbHex: 0xF4F4F5)
        public let bgActionTertiaryHover = UIColor(rgbHex: 0xC9CAD0)
        public let bgActionTertiaryInverted = UIColor(rgbHex: 0x404249)
        public let bgActionTertiaryInvertedHover = UIColor(rgbHex: 0x585B62)
        public let bgActionActive = UIColor(rgbHex: 0xC9CAD0)
        public let bgActionDisabled = UIColor(rgbHex: 0xF4F4F5)
        public let bgActionError = UIColor(rgbHex: 0xFFCACA)
        public let bgActionAccent = UIColor(rgbHex: 0x9F1239)
        public let bgActionAccentInverted = UIColor(rgbHex: 0xFFE4E6)

        // MARK: Background — illustration

        public let bgIllustrationDark = UIColor(rgbHex: 0x0B0C0F)
        public let bgIllustrationLight = UIColor(rgbHex: 0xF7F7F8)
        public let bgIllustrationDarkMuted = UIColor(rgbHex: 0x6F727A)
        public let bgIllustrationLightMuted = UIColor(rgbHex: 0xF7F7F8)

        // MARK: Stroke

        public let strokePrimary = UIColor(rgbHex: 0xF4F4F5)
        public let strokeError = UIColor(rgbHex: 0xD9363E)
        public let strokeWarning = UIColor(rgbHex: 0xF59E0B)
        public let strokeSuccess = UIColor(rgbHex: 0x22C55E)
        public let strokeTertiary = UIColor(rgbHex: 0xA9ABB3)
        public let strokePrimaryInverted = UIColor(rgbHex: 0x2C2E34)
        public let strokeSecondary = UIColor(rgbHex: 0xDADBE0)
        public let strokeCutout = UIColor(rgbHex: 0xFFFFFF)
        public let strokeAccent = UIColor(rgbHex: 0x9F1239)
        public let strokeAccentSoft = UIColor(rgbHex: 0xCF8390)

        // MARK: Focus

        public let focusError = UIColor(rgbaHex: 0xD936_3E3D)
        public let focusRing = UIColor(rgbaHex: 0x0000_003D)

        // MARK: Shadow

        public let shadowSoft = UIColor(rgbaHex: 0x0000_003D)
        public let shadowMedium = UIColor(rgbaHex: 0x0000_007A)

        // MARK: Illustrative — background

        public let illustrativeBgAmethyst = UIColor(rgbHex: 0x7C3AED)
        public let illustrativeBgOpal = UIColor(rgbHex: 0x1E1B4B)
        public let illustrativeBgTurquoise = UIColor(rgbHex: 0x0891B2)
        public let illustrativeBgOnyx = UIColor(rgbHex: 0x1E293B)
        public let illustrativeBgPearl = UIColor(rgbHex: 0x262626)
        public let illustrativeBgEmerald = UIColor(rgbHex: 0x064E3B)
        public let illustrativeBgTopaz = UIColor(rgbHex: 0xC2410C)
        public let illustrativeBgRuby = UIColor(rgbHex: 0x9F1239)
        public let illustrativeBgSapphire = UIColor(rgbHex: 0x1E3A8A)
        public let illustrativeBgGarnet = UIColor(rgbHex: 0x7F1D1D)
        public let illustrativeBgBlack = UIColor(rgbHex: 0x000000)
        public let illustrativeBgWhite = UIColor(rgbHex: 0xFFFFFF)

        // MARK: Illustrative — foreground

        public let illustrativeFgAmethyst = UIColor(rgbHex: 0xEDE9FE)
        public let illustrativeFgOpal = UIColor(rgbHex: 0xA5B4FC)
        public let illustrativeFgTurquoise = UIColor(rgbHex: 0xCFFAFE)
        public let illustrativeFgOnyx = UIColor(rgbHex: 0xE5E7EB)
        public let illustrativeFgPearl = UIColor(rgbHex: 0xF5F5F5)
        public let illustrativeFgEmerald = UIColor(rgbHex: 0xD1FAE5)
        public let illustrativeFgTopaz = UIColor(rgbHex: 0xFFEDD5)
        public let illustrativeFgRuby = UIColor(rgbHex: 0xFFE4E6)
        public let illustrativeFgSapphire = UIColor(rgbHex: 0xDBEAFE)
        public let illustrativeFgGarnet = UIColor(rgbHex: 0xFEE2E2)
        public let illustrativeFgAmethyst2 = UIColor(rgbHex: 0xEDE9FE)

        // MARK: Gradient

        public let gradientNavigationOverlayStart = UIColor(rgbaHex: 0xFFFF_FFCC)
        public let gradientNavigationOverlayEnd = UIColor(rgbaHex: 0xFFFF_FF00)
    }
}
