import CoreText
import Foundation

enum FontRegistrar {
    private static let lock = NSLock()
    private nonisolated(unsafe) static var didRegister = false

    static func registerBundledFontsIfNeeded() {
        lock.lock()
        defer { lock.unlock() }

        guard !didRegister else { return }
        didRegister = true

        let extensions = ["ttf", "otf"]
        let urls = extensions.flatMap { ext in
            Bundle.module.urls(forResourcesWithExtension: ext, subdirectory: nil) ?? []
        }
        guard !urls.isEmpty else { return }

        CTFontManagerRegisterFontURLs(urls as CFArray, .process, true, nil)
    }
}
