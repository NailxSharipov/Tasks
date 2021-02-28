//
//  FortBoyardCommonTests.swift
//  FortBoyardTests
//
//  Created by Nail Sharipov on 28.02.2021.
//

import XCTest
import FortBoyardCommon

class FortBoyardCommonTests: XCTestCase {

    private let solution = Solver()

    func test00() throws {
        
        let moves = [3, 7]
        
        XCTAssertEqual(solution.nextMove(count: 0, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 1, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 2, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 3, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 4, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 5, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 6, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 7, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 8, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 9, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 10, possibleMoves: moves), 7)
        XCTAssertEqual(solution.nextMove(count: 11, possibleMoves: moves), 7)
        XCTAssertTrue([3, 7].isPresent(solution.nextMove(count: 12, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 13, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 14, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 15, possibleMoves: moves), nil)
        XCTAssertTrue([3, 7].isPresent(solution.nextMove(count: 16, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 17, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 18, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 19, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 20, possibleMoves: moves), 7)
    }
    
    func test01() throws {
        
        let moves = [7, 3]
        
        XCTAssertEqual(solution.nextMove(count: 0, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 1, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 2, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 3, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 4, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 5, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 6, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 7, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 8, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 9, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 10, possibleMoves: moves), 7)
        XCTAssertEqual(solution.nextMove(count: 11, possibleMoves: moves), 7)
        XCTAssertTrue([3, 7].isPresent(solution.nextMove(count: 12, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 13, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 14, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 15, possibleMoves: moves), nil)
        XCTAssertTrue([3, 7].isPresent(solution.nextMove(count: 16, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 17, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 18, possibleMoves: moves), 3)
        XCTAssertEqual(solution.nextMove(count: 19, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 20, possibleMoves: moves), 7)
    }
    
    func test02() throws {
        
        let moves = [1, 3, 7]
        
        XCTAssertEqual(solution.nextMove(count: 0, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 1, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 2, possibleMoves: moves), 1)
        XCTAssertEqual(solution.nextMove(count: 3, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3].isPresent(solution.nextMove(count: 4, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 5, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3].isPresent(solution.nextMove(count: 6, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 7, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3, 7].isPresent(solution.nextMove(count: 8, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 9, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3, 7].isPresent(solution.nextMove(count: 10, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 11, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3, 7].isPresent(solution.nextMove(count: 12, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 13, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3, 7].isPresent(solution.nextMove(count: 14, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 15, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3, 7].isPresent(solution.nextMove(count: 16, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 17, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3, 7].isPresent(solution.nextMove(count: 18, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 19, possibleMoves: moves), nil)
        XCTAssertTrue([1, 3, 7].isPresent(solution.nextMove(count: 20, possibleMoves: moves)))
    }
    
    func test03() throws {
        
        let moves = [2, 3, 4]
        XCTAssertEqual(solution.nextMove(count: 0, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 1, possibleMoves: moves), 0)
        XCTAssertEqual(solution.nextMove(count: 2, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 3, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 4, possibleMoves: moves), 2)
        XCTAssertTrue([2, 3].isPresent(solution.nextMove(count: 5, possibleMoves: moves)))
        XCTAssertTrue([3, 4].isPresent(solution.nextMove(count: 6, possibleMoves: moves)))
        XCTAssertEqual(solution.nextMove(count: 7, possibleMoves: moves), 4)
        XCTAssertEqual(solution.nextMove(count: 8, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 9, possibleMoves: moves), nil)
        XCTAssertEqual(solution.nextMove(count: 10, possibleMoves: moves), 2)
    }
    
    func test04() throws {
        let moves = [2, 7, 13, 31, 84]
        let s = Solution()
        for i in 0...1000 {
            let allMoves = s.allWinMoves(count: i, possibleMoves: moves)
            let test = solution.nextMove(count: i, possibleMoves: moves)
            XCTAssertTrue(allMoves.isPresent(test))
        }
        
        XCTAssertEqual(solution.nextMove(count: 0, possibleMoves: moves), 0)
    }
    
}

private extension Array where Element == Int {
    
    func isPresent(_ value: Int?) -> Bool {
        guard let value = value else {
            return self.isEmpty
        }
        return self.contains(value)
    }
    
}
