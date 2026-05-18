import SwiftUI
import UIKit

public extension View {
    func typography(_ style: TypographyStyle) -> some View {
        modifier(DSTextModifier(style: style))
    }
}

private struct DSTextModifier: ViewModifier {
    let style: TypographyStyle
    @Environment(\.appTypography) private var selection

    func body(content: Content) -> some View {
        let family = TypographyFamiliesRegistry.makeFamily(selection)
        let spec = style.resolvedSpec

        let uiFont = family.font(
            family: spec.family,
            weight: spec.weight,
            size: spec.size
        )

        let lineSpacing = max(0, spec.lineHeight - uiFont.lineHeight)
        return content
            .font(Font(uiFont))
            .tracking(spec.tracking)
            .lineSpacing(lineSpacing)
    }
}

private struct DSTypographyEnvironmentKey: UITraitBridgedEnvironmentKey {
    static let defaultValue: TypographySelection = DSTypographyTrait.defaultValue

    static func read(from traitCollection: UITraitCollection) -> TypographySelection {
        traitCollection.appTypography
    }

    static func write(to mutableTraits: inout any UIMutableTraits, value: TypographySelection) {
        mutableTraits.appTypography = value
    }
}

extension EnvironmentValues {
    var appTypography: TypographySelection {
        get { self[DSTypographyEnvironmentKey.self] }
        set { self[DSTypographyEnvironmentKey.self] = newValue }
    }
}
