//: [Previous](@previous)

import Foundation

//https://codility.com/programmers/lessons/4-counting_elements/max_counters/
public func maxCounters(_ N : Int, _ A : [Int]) -> [Int] {
    // write your code in Swift 3.0 (Linux)
    var counters = Array(repeating: 0, count: N)
    var maxCrt = 0
    var valMax = 0
    
    for a in A {
        if a == N+1 {
            maxCrt = valMax
        }
        else {
            counters[a-1] = max(maxCrt, counters[a-1]) + 1
            valMax = max(valMax, counters[a-1])
        }
    }
    
    
    for (i, c) in counters.enumerated() {
        counters[i] = max(maxCrt, c)
    }
    
    return counters
}

//maxCounters(5 , [3, 4, 4, 6, 1, 4, 4])


