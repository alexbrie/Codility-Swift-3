//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/4-counting_elements/frog_river_one/

public func frog(_ X : Int, _ A :  [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var filledX = Array(repeating: -1, count: X)
    
    for (i, x) in A.enumerated() {
        if x <= X && filledX[x-1] == -1 {
            filledX[x-1] = i
        }
    }
    
    var maxT = 0
    for x in filledX {
        if x == -1 { // never filled
            return -1
        }
        else {
            maxT = max(maxT, x)
        }
    }
    
    return maxT
}

frog(5, [1, 3, 1, 4, 2, 3, 5, 4])
