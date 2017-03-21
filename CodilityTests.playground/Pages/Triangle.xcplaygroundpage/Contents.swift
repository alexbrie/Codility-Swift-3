//: [Previous](@previous)

import Foundation


// https://codility.com/programmers/lessons/6-sorting/max_product_of_three/


public func triangular(_ A :  [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    //    let s = mergeSort(A)
    let s = A.sorted()
    let n = s.count
    if n < 3 {
        return 0
    }
    
    for i in 2..<n {
        if s[i] < s[i-1]+s[i-2] {
            return 1
        }
    }
    
    return 0
}

triangular([])
triangular([10, 2, 5, 1, 8, 20])
triangular([10, 50, 5, 1])
triangular([-10, 50, 5, 1])
