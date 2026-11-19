> [!WARNING]
> This open source code is provided for research, experimentation, and developer education only. This code has not been audited, is actively experimental, and may contain bugs, vulnerabilities, or incomplete features. Use at your own risk and obtain legal advice as appropriate - DYOR.
>
> Parity doesn’t deploy the code but may update it based on community feedback.
>
> If you experience problems with any product or service that was built on or deployed from this code, you should contact the third party who deployed the code in its amended form, not Parity.

# Polkadot App Design System — iOS

SwiftUI / UIKit design tokens for the Polkadot App: colors, typography, spacings, radii. Generated from [polkadot-app-design-system](https://github.com/paritytech/polkadot-app-design-system) — do not edit files under `Sources/DesignSystem/Generated/` by hand; they're regenerated on every release.

## Consuming via Swift Package Manager

In `Package.swift`:

```swift
.package(
    url: "https://github.com/paritytech/polkadot-app-design-system-ios",
    from: "0.0.1"
)
```

…then add `"DesignSystem"` to your target's dependencies. Or use Xcode's _File → Add Package Dependencies…_ with the same URL.

Tags are published as `vX.Y.Z`. See the [tags](../../tags) page.

## What's in the package

```
Sources/DesignSystem/
├── Theme/                  Theme protocol + CommonTheme base
├── ThemeManager/           Singleton that resolves and persists the active theme
├── Typography/             TypographyFamily protocol + style composition (.emphasized, .mono)
├── TypographyManager/      Singleton that resolves and persists the active typography family
├── Tokens/                 UIColor.app(_:), UIFont.app(_:) resolvers
├── Traits/                 DSThemeTrait, DSTypographyTrait + UIView typography binding
├── SwiftUI/                .typography(_:) view modifier with reactive trait binding
├── Extensions/             UIColor(rgbHex:), UIColor(rgbaHex:)
└── Generated/              Style Dictionary output — do not hand-edit
    ├── colors/             ThemeColorsProtocol, UIColor+Tokens, Color+Tokens, per-theme classes
    ├── typography/         Typescale, font family/weight enums, UIFont+Tokens, per-family classes
    ├── radii/              DSRadii (zero, tiny, …, full)
    └── spacings/           DSSpacings (zero, tiny, …, extraLargeIncreased)
```

## Setup at app launch

In your scene delegate's `scene(_:willConnectTo:options:)`:

```swift
import DesignSystem

func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options: UIScene.ConnectionOptions) {
    guard let windowScene = scene as? UIWindowScene else { return }

    ThemeManager.shared.setup(scene: windowScene)
    TypographyManager.shared.setup(scene: windowScene)

    // your usual scene setup…
}
```

`setup(scene:)` (a) captures the scene for future trait broadcasts, (b) applies the persisted theme/typography selection as a trait override before any view renders.

## Using tokens

**SwiftUI colors** (reactive — driven by `UIColor(dynamicProvider:)`):

```swift
Text("Hello").foregroundStyle(.fgPrimary)
```

**SwiftUI typography** (reactive — driven by environment-bridged trait):

```swift
Text("Hello").typography(.bodyMedium)
```

**UIKit colors** (reactive — dynamic UIColor):

```swift
label.textColor = .fgPrimary
```

**UIKit fonts** (snapshot — UIFont can't be dynamic; bind explicitly if you need live updates):

```swift
label.font = .bodyMedium
label.bindAppTypography { $0.font = .bodyMedium }
```

**Radii and spacings** (static values):

```swift
RoundedRectangle(cornerRadius: DSRadii.medium)
VStack(spacing: DSSpacings.large) { … }
```

## Updating tokens

Tokens are edited in the upstream [polkadot-app-design-system](https://github.com/paritytech/polkadot-app-design-system) repo. The generator regenerates the Swift output into `Sources/DesignSystem/Generated/` — those files are checked in here but driven by the upstream source.

## Fonts

The package bundles Inter, Manrope, Martian Mono and Source Sans 3 under `Sources/DesignSystem/Resources/Fonts/`. They are distributed under the SIL Open Font License 1.1, not the Apache License; see [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) and [`licenses/fonts/`](licenses/fonts).

## Security

Before deploying it for real use cases, you are responsible for:

- Reviewing the code yourself, we publish a reference, not a hardened production build
- Checking that the dependencies are up to date and free of known vulnerabilities
- Securing your own fork or deployment environment (keys, secrets, network configuration)
- Tracking the latest tagged release/commits for security fixes; older releases are not backported (exceptions might apply)

For Parity's security disclosure process, and Bug Bounty program, feel free to visit: https://parity.io/bug-bounty

## License

Licensed under the [Apache License, Version 2.0](LICENSE). Bundled fonts are licensed separately, see [Fonts](#fonts).
