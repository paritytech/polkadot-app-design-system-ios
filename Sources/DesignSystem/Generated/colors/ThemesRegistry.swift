public enum ThemesRegistry {
    public static let factories: [ThemeSelection: () -> Theme] = [
        .polkadotDefault: PolkadotDefaultTheme.init,
        .polkadotLight: PolkadotLightTheme.init
    ]

    public static let `default`: ThemeSelection = .polkadotDefault

    public static func makeTheme(_ selection: ThemeSelection) -> Theme {
        (factories[selection] ?? PolkadotDefaultTheme.init)()
    }
}
