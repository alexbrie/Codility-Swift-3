//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/6-sorting/distinct/

public func nrDistElems(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var H = [Int : Int]()
    
    for i in A {
        if let k = H[i] {
            H[i] = k + 1
        }
        else {
            H[i] = 0
        }
    }
    
    return H.count
}
