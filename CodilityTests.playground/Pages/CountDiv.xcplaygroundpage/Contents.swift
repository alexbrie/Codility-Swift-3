//: [Previous](@previous)

import Foundation


// https://codility.com/programmers/lessons/5-prefix_sums/count_div/
public func numDivK(_ A : Int, _ B : Int, _ K : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    let mKB = B/K + 1
    let mKA = A > 0 ? (A-1)/K + 1 : 0
    
    let numInside = mKB - mKA
    return numInside
}

numDivK(3, 5, 2)
numDivK(3, 5, 4)
numDivK(3, 9, 4)
numDivK(6, 13, 4)
