//
//  FortBoyardOriginalTests.swift
//  FortBoyardOriginalTests
//
//  Created by Nail Sharipov on 28.02.2021.
//

import XCTest

class FortBoyardOriginalTests: XCTestCase {

    private let solution: FortBoyardOriginalSolution = Solver()

    func test00() throws {
        XCTAssertEqual(solution.nextMove(count: 0), 0)
    }
    
    func test01() throws {
        XCTAssertEqual(solution.nextMove(count: 1), nil)
    }
    
    func test02() throws {
        XCTAssertEqual(solution.nextMove(count: 2), 1)
    }
    
    func test03() throws {
        XCTAssertEqual(solution.nextMove(count: 3), 2)
    }
    
    func test04() throws {
        XCTAssertEqual(solution.nextMove(count: 4), 3)
    }
    
    func test05() throws {
        XCTAssertEqual(solution.nextMove(count: 5), nil)
    }
    
    func test06() throws {
        XCTAssertEqual(solution.nextMove(count: 6), 1)
    }
    
    func test07() throws {
        XCTAssertEqual(solution.nextMove(count: 7), 2)
    }
    
    func test08() throws {
        XCTAssertEqual(solution.nextMove(count: 8), 3)
    }
    
    func test09() throws {
        XCTAssertEqual(solution.nextMove(count: 9), nil)
    }
    
    func test10() throws {
        for i in 10...1000 {
            let a = (i - 1) % 4
            XCTAssertEqual(solution.nextMove(count: i), a != 0 ? a : nil)
        }
    }

}
