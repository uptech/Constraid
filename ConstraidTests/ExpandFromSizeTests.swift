import XCTest
import Constraid

class ExpandFromSizeTests: XCTestCase {
    func testExpandFromWidthOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.expand(viewOne, fromWidthOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))

        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }

    func testExpandFromHeightOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        let constraints = Constraid.expand(viewOne, fromHeightOf: viewTwo, times: 2.0, offsetBy: 10.0, priority: Constraid.LayoutPriority(rawValue: 500))
        constraints.activate()
        let constraint = viewOne.constraints.first!

        XCTAssertEqual(constraints, viewOne.constraints)
        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.greaterThanOrEqual)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.multiplier, 2.0)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, UILayoutPriority(rawValue: UILayoutPriority.RawValue(500)))
        
        XCTAssertEqual(viewOne.translatesAutoresizingMaskIntoConstraints, false)
    }
}
