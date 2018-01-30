//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/4-counting_elements/missing_integer/
public func minPosMissing(_ A :  [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var mp = Int.max
    var Mp = 0
    
    var hash = [Int : Int]()
    for x in A {
        hash[x] = 1
        
        if x > 0 {
            if mp > x {
                mp = x
            }
            if Mp < x {
                Mp = x
            }
        }
    }
    
    if mp > 1 || Mp <= 0 {
        return 1
    }
    
    var x = 0
    while x <= Mp {
        x = x + 1
        let key = hash[x]
        if key == nil {
            return x // found the minimum positive Int not in the hash
        }
    }
    
    return Mp + 1
}

minPosMissing([1, 3, 6, 4, 1, 2])
minPosMissing([-1, -3, -6, -4, 1, 2])
