
import UIKit

public typealias Constraint = (_ child: UIView, _ parent: UIView) -> NSLayoutConstraint

public func equal<Axis, Anchor>(
    _ keyPath: KeyPath<UIView, Anchor>,
    _ to: KeyPath<UIView, Anchor>,
    constant: CGFloat = 0) -> Constraint where Anchor: NSLayoutAnchor<Axis> {

        return { view, parent in
            view[keyPath: keyPath].constraint(
                equalTo: parent[keyPath: to],
                constant: constant)
        }
}

public func equal<Axis, Anchor>(
    _ keyPath: KeyPath<UIView, Anchor>,
    constant: CGFloat = 0) -> Constraint where Anchor: NSLayoutAnchor<Axis> {
        
    return equal(keyPath, keyPath, constant: constant)
}

public extension UIView {
    func addSubview(_ child: UIView, constraints: [Constraint]) {
        addSubview(child)
        child.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints.map { $0(child, self) })
    }
}
