import XCTest
@testable import DiffableTableViewDataSource

final class DiffableTableViewDataSourceTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DiffableTableViewDataSource().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
