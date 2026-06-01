public enum ThemesRegistry {
    public static let factories: [ThemeSelection: () -> Theme] = [
        .berlinNight: BerlinNightTheme.init,
        .berlinDay: BerlinDayTheme.init,
        .lisbon: LisbonTheme.init,
        .malta: MaltaTheme.init,
        .tokyo: TokyoTheme.init
    ]

    public static let `default`: ThemeSelection = .berlinNight

    public static func makeTheme(_ selection: ThemeSelection) -> Theme {
        (factories[selection] ?? BerlinNightTheme.init)()
    }
}
