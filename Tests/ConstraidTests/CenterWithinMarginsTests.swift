@testable import Constraid
import XCTest

// This test is only available on iOS
#if os(iOS)
import UIKit

class CenterWithinMarginsTests: XCTestCase {
    func testCenterVerticallyWithinMarginsOffsetDown() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(verticallyWithinMarginsOf: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .down, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerYWithinMargins)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterVerticallyWithinMarginsOffsetUp() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(verticallyWithinMarginsOf: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .up, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerYWithinMargins)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterHorizontallyWithinMarginsOffsetRight() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(horizontallyWithinMarginsOf: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .right, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerXWithinMargins)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterHorizontallyWithinMarginsOffsetLeft() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(horizontallyWithinMarginsOf: viewTwo, times: 2.0,  offsetBy: 10.0, offsetDirection: .left,priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerXWithinMargins)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterWithinMarginsOffsetDownAndRight() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(withinMarginsOf: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .downAndRight, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerXWithinMargins)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.centerYWithinMargins)
        XCTAssertEqual(constraintTwo.constant, 10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testCenterWithinMarginsOffsetUpAndRight() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.center(withinMarginsOf: viewTwo, times: 2.0, offsetBy: 10.0, offsetDirection: .upAndLeft, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.centerX)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.centerXWithinMargins)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.centerY)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.equal)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.centerYWithinMargins)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
#endif
