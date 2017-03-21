//: [Previous](@previous)

import Foundation


// https://codility.com/programmers/lessons/5-prefix_sums/passing_cars/
public func pasCars(_ A : [Int]) -> Int {
    var n0 = 0
    var nPairs = 0
    
    for i in A {
        if i == 0 {
            n0 += 1
        }
        else {
            if n0 > 0 {
                nPairs += n0
                if nPairs > 1000000000 {
                    return -1
                }
            }
        }
    }
    
    return nPairs
}

pasCars([0, 1, 0, 1, 1])
