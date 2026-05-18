public enum TypographyFamiliesRegistry {
    public static let factories: [TypographySelection: () -> TypographyFamily] = [
        .polkadotDefault: PolkadotDefaultTypography.init
    ]

    public static let `default`: TypographySelection = .polkadotDefault

    public static func makeFamily(_ selection: TypographySelection) -> TypographyFamily {
        (factories[selection] ?? PolkadotDefaultTypography.init)()
    }
}
