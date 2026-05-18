import UIKit
import XCTest
@testable import DesignSystem

final class DesignSystemTests: XCTestCase {
    @MainActor
    func testAppColorsResolveAgainstDefaultDarkVariant() {
        let traits = traits(for: .polkadotDefault)
        let expected = ThemesRegistry.makeTheme(.polkadotDefault).colors.fgPrimary
        XCTAssertEqual(
            UIColor.fgPrimary.resolvedColor(with: traits),
            expected
        )
    }

    @MainActor
    func testAppColorsResolveAgainstLightVariant() {
        let traits = traits(for: .polkadotLight)
        let expected = ThemesRegistry.makeTheme(.polkadotLight).colors.fgPrimary
        XCTAssertEqual(
            UIColor.fgPrimary.resolvedColor(with: traits),
            expected
        )
    }

    @MainActor
    func testAppColorsDifferAcrossVariants() {
        let darkResolved = UIColor.bgSurfaceMain.resolvedColor(with: traits(for: .polkadotDefault))
        let lightResolved = UIColor.bgSurfaceMain.resolvedColor(with: traits(for: .polkadotLight))
        XCTAssertNotEqual(
            darkResolved,
            lightResolved,
            "bgSurfaceMain should differ between dark and light variants"
        )
    }

    @MainActor
    func testDSThemeTraitDefaultMatchesRegistryDefault() {
        XCTAssertEqual(DSThemeTrait.defaultValue, ThemesRegistry.default)
    }

    @MainActor
    func testDSTypographyTraitDefaultMatchesRegistryDefault() {
        XCTAssertEqual(DSTypographyTrait.defaultValue, TypographyFamiliesRegistry.default)
    }

    // MARK: Helpers

    @MainActor
    private func traits(for selection: ThemeSelection) -> UITraitCollection {
        UITraitCollection { mutable in
            mutable[DSThemeTrait.self] = selection
        }
    }
}
