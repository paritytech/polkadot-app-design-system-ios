import CoreGraphics

public struct TypographyStyle: Hashable {
    public let typescale: Typescale
    public let isEmphasized: Bool
    public let isMono: Bool

    public init(typescale: Typescale, isEmphasized: Bool = false, isMono: Bool = false) {
        self.typescale = typescale
        self.isEmphasized = isEmphasized
        self.isMono = isMono
    }

    public var emphasized: TypographyStyle {
        TypographyStyle(typescale: typescale, isEmphasized: true, isMono: isMono)
    }

    public var mono: TypographyStyle {
        TypographyStyle(typescale: typescale, isEmphasized: isEmphasized, isMono: true)
    }

    public var resolvedSpec: TypographyStyleSpec {
        let base = typescale.spec
        let weight = isEmphasized ? base.emphasizedWeight : base.weight
        let family = (isMono ? base.monoFamily : nil) ?? base.family
        return TypographyStyleSpec(
            family: family,
            monoFamily: base.monoFamily,
            size: base.size,
            weight: weight,
            emphasizedWeight: base.emphasizedWeight,
            lineHeight: base.lineHeight,
            tracking: base.tracking
        )
    }
}

public struct TypographyStyleSpec: Hashable {
    public let family: TypographyFontFamily
    public let monoFamily: TypographyFontFamily?
    public let size: CGFloat
    public let weight: TypographyFontWeight
    public let emphasizedWeight: TypographyFontWeight
    public let lineHeight: CGFloat
    public let tracking: CGFloat

    public init(
        family: TypographyFontFamily,
        monoFamily: TypographyFontFamily? = nil,
        size: CGFloat,
        weight: TypographyFontWeight,
        emphasizedWeight: TypographyFontWeight? = nil,
        lineHeight: CGFloat,
        tracking: CGFloat
    ) {
        self.family = family
        self.monoFamily = monoFamily
        self.size = size
        self.weight = weight
        self.emphasizedWeight = emphasizedWeight ?? weight
        self.lineHeight = lineHeight
        self.tracking = tracking
    }
}
