//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/3-time_complexity/frog_jmp/

/*
 A frog located at position X wants to get to a position greater than or equal to Y. The small frog always jumps a fixed distance, D.
 
 Count the minimal number of jumps to reach its target.
 
 given three integers X, Y and D, return the minimal number of jumps from position X to a position equal to or greater than Y.
 
 Ex:
 
 X = 10
 Y = 85
 D = 30
 the function should return 3
 
 (after the first jump, at position 10 + 30 = 40)
 (after the second jump, at position 10 + 30 + 30 = 70)
 (after the third jump, at position 10 + 30 + 30 + 30 = 100)
 Assume that input is correct:
time complexity O(1);
space complexity O(1).
 */


public func frogJump(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    return Int(ceil((Double(Y) - Double(X)) / Double(D)))
}

frogJump(10, 30, 30)
frogJump(10, 30, 10)
frogJump(10, 85, 30)

//: [Next](@next)
