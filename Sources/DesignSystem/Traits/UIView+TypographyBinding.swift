import UIKit

public extension UITraitChangeObservable where Self: UITraitEnvironment {
    @discardableResult
    func bindAppTypography(
        _ apply: @escaping (Self) -> Void
    ) -> UITraitChangeRegistration {
        apply(self)
        return registerForTraitChanges([DSTypographyTrait.self]) { (observer: Self, _) in
            apply(observer)
        }
    }
}
