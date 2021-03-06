import XCTest
@testable import Constraid

// This is an iOS only test
#if os(iOS)
import UIKit

class LimitByMarginTests: XCTestCase {
    func testLimitByLeadingMarginOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byLeadingMarginOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByTrailingMarginOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byTrailingMarginOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByTopMarginOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byTopMarginOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByBottomMarginOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byBottomMarginOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintOne.constant, -10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByHorizontalMarginsOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byHorizontalMarginsOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByVerticalMarginsOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byVerticalMarginsOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()
        let constraintOne = viewOne.constraints.first!
        let constraintTwo = viewOne.constraints.last!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testLimitByMarginsOf() {
        let viewOne = View()
        let viewTwo = View()

        viewOne.addSubview(viewTwo)

        let proxy = viewOne.constraid.limit(byMarginsOf: viewTwo, times: 2.0, insetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        let constraints = proxy.constraintCollection
        proxy.activate()

        let constraintOne = viewOne.constraints[0]
        let constraintTwo = viewOne.constraints[1]
        let constraintThree = viewOne.constraints[2]
        let constraintFour = viewOne.constraints[3]

        XCTAssertEqual(constraints, viewOne.constraints)

        XCTAssertEqual(constraintOne.isActive, true)
        XCTAssertEqual(constraintOne.firstItem as! View, viewOne)
        XCTAssertEqual(constraintOne.firstAttribute, LayoutAttribute.top)
        XCTAssertEqual(constraintOne.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintOne.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintOne.secondAttribute, LayoutAttribute.topMargin)
        XCTAssertEqual(constraintOne.constant, 10.0)
        XCTAssertEqual(constraintOne.multiplier, 2.0)
        XCTAssertEqual(constraintOne.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintTwo.isActive, true)
        XCTAssertEqual(constraintTwo.firstItem as! View, viewOne)
        XCTAssertEqual(constraintTwo.firstAttribute, LayoutAttribute.bottom)
        XCTAssertEqual(constraintTwo.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintTwo.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintTwo.secondAttribute, LayoutAttribute.bottomMargin)
        XCTAssertEqual(constraintTwo.constant, -10.0)
        XCTAssertEqual(constraintTwo.multiplier, 2.0)
        XCTAssertEqual(constraintTwo.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintThree.isActive, true)
        XCTAssertEqual(constraintThree.firstItem as! View, viewOne)
        XCTAssertEqual(constraintThree.firstAttribute, LayoutAttribute.leading)
        XCTAssertEqual(constraintThree.relation, LayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraintThree.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintThree.secondAttribute, LayoutAttribute.leadingMargin)
        XCTAssertEqual(constraintThree.constant, 10.0)
        XCTAssertEqual(constraintThree.multiplier, 2.0)
        XCTAssertEqual(constraintThree.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(constraintFour.isActive, true)
        XCTAssertEqual(constraintFour.firstItem as! View, viewOne)
        XCTAssertEqual(constraintFour.firstAttribute, LayoutAttribute.trailing)
        XCTAssertEqual(constraintFour.relation, LayoutRelation.lessThanOrEqual)
        XCTAssertEqual(constraintFour.secondItem as! View, viewTwo)
        XCTAssertEqual(constraintFour.secondAttribute, LayoutAttribute.trailingMargin)
        XCTAssertEqual(constraintFour.constant, -10.0)
        XCTAssertEqual(constraintFour.multiplier, 2.0)
        XCTAssertEqual(constraintFour.priority, LayoutPriority(rawValue: LayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
#endif
