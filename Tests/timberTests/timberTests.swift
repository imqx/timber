import XCTest
@testable import timber

final class timberTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(timber().text, "Hello, World!")
    }
}
