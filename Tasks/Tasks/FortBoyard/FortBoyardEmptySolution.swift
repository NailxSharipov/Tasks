//
//  FortBoyardEmptySolution.swift
//  Tasks
//
//  Created by Nail Sharipov on 27.02.2021.
//

struct FortBoyardEmptySolution: FortBoyardOriginalSolution, FortBoyardCommonSolution {
    
    func nextMove(count: Int) -> Int? {
        1
    }
    
    func nextMove(count: Int, possibleMoves: [Int]) -> Int? {
        possibleMoves.first
    }

}
