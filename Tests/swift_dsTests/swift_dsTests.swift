import XCTest
@testable import swift_ds

class swift_dsTests: XCTestCase {
    func testStack() {
        //XCTAssertEqual(swift_ds().text, "Hello, World!")

        let _ = Stack<Int>()
        
        //error: cannot explicitly specialize a generic function
        //var stack = createStack<Int>()

        // stack object creation with factory method
        var stack = createStack(initialItems: [] as [Int])

        stack = Stack<Int>()
        XCTAssertEqual(stack.size(), 0)
        XCTAssertEqual(stack.peek(), nil)
        XCTAssertEqual(stack.pop(), nil)

        stack = Stack(items: [100, 200, 300])
        XCTAssertEqual(stack.size(), 3)
        XCTAssertEqual(stack.peek(), 300)
        XCTAssertEqual(stack.pop(), 300)
        XCTAssertEqual(stack.peek(), 200)
        XCTAssertEqual(stack.size(), 2)

        stack.push(111)
        stack.push(222)
        XCTAssertEqual(stack.size(), 4)
        XCTAssertEqual(stack.peek(), 222)
        for _ in 1...3 {
            let _ = stack.pop()
        }
        XCTAssertEqual(stack.peek(), 100)
        stack.removeAll()
        XCTAssertEqual(stack.size(), 0)
    }

    static var allTests = [
        ("Stack", testStack),
    ]
}
