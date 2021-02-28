//
//  Solver.swift
//  Tasks
//
//  Created by Nail Sharipov on 28.02.2021.
//

import FortBoyardCommon

struct Solver: FortBoyardCommonSolution, FortBoyardOriginalSolution {
    
    private let solution = Solution()
    
    func nextMove(count: Int) -> Int? {
        solution.allWinMoves(count: count, possibleMoves: [1, 2, 3]).first
    }
    
    func nextMove(count: Int, possibleMoves: [Int]) -> Int? {
        solution.allWinMoves(count: count, possibleMoves: possibleMoves).first
    }
    
}
