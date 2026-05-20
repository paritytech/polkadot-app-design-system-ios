import UIKit

public final class PolkadotDefaultTheme: CommonTheme, @unchecked Sendable {
    public init() {
        super.init(
            id: "polkadotDefault",
            statusBarStyle: .lightContent,
            colors: Colors()
        )
    }

    public final class Colors: ThemeColorsProtocol, @unchecked Sendable {
        // MARK: Foreground

        public let fgError = UIColor(rgbHex: 0xD9363E)
        public let fgLinkHover = UIColor(rgbHex: 0x78A9FF)
        public let fgLink = UIColor(rgbHex: 0x4D8DFF)
        public let fgTertiary = UIColor(rgbHex: 0x585B62)
        public let fgSecondary = UIColor(rgbHex: 0x8C8F98)
        public let fgWarning = UIColor(rgbHex: 0xF59E0B)
        public let fgSuccess = UIColor(rgbHex: 0x22C55E)
        public let fgPrimary = UIColor(rgbHex: 0xF4F4F5)
        public let fgPrimaryInverted = UIColor(rgbHex: 0x0B0C0F)
        public let fgSecondaryInverted = UIColor(rgbHex: 0x6F727A)
        public let fgTertiaryInverted = UIColor(rgbHex: 0x8C8F98)
        public let fgStaticWhite = UIColor(rgbHex: 0xFFFFFF)
        public let fgSecondaryHover = UIColor(rgbHex: 0xDADBE0)
        public let fgSecondaryInvertedHover = UIColor(rgbHex: 0x000000)
        public let fgDisabled = UIColor(rgbHex: 0x585B62)

        // MARK: Background — surface

        public let bgSurfaceMain = UIColor(rgbHex: 0x0B0C0F)
        public let bgSurfaceContainer = UIColor(rgbHex: 0x1A1B20)
        public let bgSurfaceContainerInverted = UIColor(rgbHex: 0xFFFFFF)
        public let bgSurfaceNestedInverted = UIColor(rgbHex: 0xF4F4F5)
        public let bgSurfaceOverlay = UIColor(rgbaHex: 0x0000_007A)
        public let bgSurfaceNested = UIColor(rgbHex: 0x23252A)

        // MARK: Background — selection

        public let bgSelectionContainerHover = UIColor(rgbHex: 0x23252A)
        public let bgSelectionContainerActive = UIColor(rgbHex: 0x2C2E34)
        public let bgSelectionContainerHoverInverted = UIColor(rgbHex: 0xF7F7F8)
        public let bgSelectionContainerActiveInverted = UIColor(rgbHex: 0xF4F4F5)

        // MARK: Background — status

        public let bgStatusError = UIColor(rgbHex: 0xD9363E)
        public let bgStatusWarning = UIColor(rgbHex: 0xF59E0B)
        public let bgStatusErrorHover = UIColor(rgbHex: 0xB4232F)
        public let bgStatusWarningHover = UIColor(rgbHex: 0xFFBB33)

        // MARK: Background — accent

        public let bgAccent = UIColor(rgbHex: 0x4D8DFF)

        // MARK: Background — action

        public let bgActionPrimary = UIColor(rgbHex: 0xDADBE0)
        public let bgActionSecondary = UIColor(rgbHex: 0x404249)
        public let bgActionPrimaryInverted = UIColor(rgbHex: 0x0B0C0F)
        public let bgActionSecondaryInverted = UIColor(rgbHex: 0xC9CAD0)
        public let bgActionPrimaryHover = UIColor(rgbHex: 0xC9CAD0)
        public let bgActionSecondaryHover = UIColor(rgbHex: 0x2C2E34)
        public let bgActionPrimaryInvertedHover = UIColor(rgbHex: 0x23252A)
        public let bgActionSecondaryInvertedHover = UIColor(rgbHex: 0xA9ABB3)
        public let bgActionTertiary = UIColor(rgbHex: 0x2C2E34)
        public let bgActionTertiaryHover = UIColor(rgbHex: 0x404249)
        public let bgActionTertiaryInverted = UIColor(rgbHex: 0xF4F4F5)
        public let bgActionTertiaryInvertedHover = UIColor(rgbHex: 0xDADBE0)
        public let bgActionActive = UIColor(rgbHex: 0x585B62)
        public let bgActionDisabled = UIColor(rgbHex: 0x2C2E34)

        // MARK: Background — illustration

        public let bgIllustrationDark = UIColor(rgbHex: 0xDADBE0)
        public let bgIllustrationLight = UIColor(rgbHex: 0x1A1B20)
        public let bgIllustrationDarkMuted = UIColor(rgbHex: 0x585B62)
        public let bgIllustrationLightMuted = UIColor(rgbHex: 0x585B62)

        // MARK: Stroke

        public let strokePrimary = UIColor(rgbHex: 0x23252A)
        public let strokeError = UIColor(rgbHex: 0xD9363E)
        public let strokeWarning = UIColor(rgbHex: 0xF59E0B)
        public let strokeSuccess = UIColor(rgbHex: 0x22C55E)
        public let strokeTertiary = UIColor(rgbHex: 0x8C8F98)
        public let strokePrimaryInverted = UIColor(rgbHex: 0xDADBE0)
        public let strokeSecondary = UIColor(rgbHex: 0x404249)
        public let strokeCutout = UIColor(rgbHex: 0x000000)

        // MARK: Focus

        public let focusError = UIColor(rgbaHex: 0xD936_3E3D)
        public let focusRing = UIColor(rgbaHex: 0xFFFF_FF29)

        // MARK: Shadow

        public let shadowSoft = UIColor(rgbaHex: 0x0000_003D)
        public let shadowMedium = UIColor(rgbaHex: 0x0000_007A)

        // MARK: Avatar — background

        public let avatarBgAmethyst = UIColor(rgbHex: 0x7C3AED)
        public let avatarBgOpal = UIColor(rgbHex: 0x1E1B4B)
        public let avatarBgTurquoise = UIColor(rgbHex: 0x0891B2)
        public let avatarBgOnyx = UIColor(rgbHex: 0x1E293B)
        public let avatarBgPearl = UIColor(rgbHex: 0x262626)
        public let avatarBgEmerald = UIColor(rgbHex: 0x064E3B)
        public let avatarBgTopaz = UIColor(rgbHex: 0xC2410C)
        public let avatarBgRuby = UIColor(rgbHex: 0x9F1239)
        public let avatarBgSapphire = UIColor(rgbHex: 0x1E3A8A)
        public let avatarBgGarnet = UIColor(rgbHex: 0x7F1D1D)

        // MARK: Avatar — foreground

        public let avatarFgAmethyst = UIColor(rgbHex: 0xEDE9FE)
        public let avatarFgOpal = UIColor(rgbHex: 0xA5B4FC)
        public let avatarFgTurquoise = UIColor(rgbHex: 0xCFFAFE)
        public let avatarFgOnyx = UIColor(rgbHex: 0xE5E7EB)
        public let avatarFgPearl = UIColor(rgbHex: 0xF5F5F5)
        public let avatarFgEmerald = UIColor(rgbHex: 0xD1FAE5)
        public let avatarFgTopaz = UIColor(rgbHex: 0xFFEDD5)
        public let avatarFgRuby = UIColor(rgbHex: 0xFFE4E6)
        public let avatarFgSapphire = UIColor(rgbHex: 0xDBEAFE)
        public let avatarFgGarnet = UIColor(rgbHex: 0xFEE2E2)

        // MARK: Gradient

        public let gradientNavigationOverlayStart = UIColor(rgbaHex: 0x0000_00CC)
        public let gradientNavigationOverlayEnd = UIColor(rgbaHex: 0x0000_0000)
    }
}
