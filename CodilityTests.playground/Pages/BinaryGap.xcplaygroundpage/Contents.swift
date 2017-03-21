/*
 
 # [Binary Gap](https://codility.com/programmers/lessons/1-iterations/binary_gap/)
 
Summary:
 
A binary gap ... is any maximal sequence of consecutive zeros surrounded by ones at both ends in the binary representation of N.

Given a positive integer N, return the length of its longest binary gap. Return 0 if N doesn't contain a binary gap.
 
Example: given N = 1041 the function should return 5, (1041 in binary is 10000010001 , so the longest binary gap has length 5)
 
Assume:
 N is in 1.. maxint
Complexity:
time complexity is O(log(N));
space complexity is O(1).
 */

import Foundation


public func binary(_ A: Int) -> [Int] {
    let n = Int(log2(Double(A))) + 1
    var binAr = Array(repeating: 0, count: n)
    var idx = n
    var a = A
    while idx > 0 {
        binAr[idx-1] = a % 2
        idx -= 1
        a /= 2
    }
    
    return binAr
}

//O(n) space complexity
public func binaryGap1(_ A: Int) -> (start:Int, length:Int) {
    let binAr = binary(A)
    
    var crtGapIndex = 0
    var crtGapLength = 0
    
    var maxGapIndex = 0
    var maxGapLength = 0
    
    var wasZero : Bool = false
    
    for (i, digit) in binAr.enumerated() {
        if digit == 1 {
            if wasZero {
                crtGapLength = i - crtGapIndex
                if maxGapLength < crtGapLength {
                    maxGapLength = crtGapLength
                    maxGapIndex = crtGapIndex
                }
            }
            wasZero = false
        }
        else {
            if !wasZero { // previous was one, start gap
                crtGapIndex = i
            }
            wasZero = true
        }
    }
    return (maxGapIndex, maxGapLength)
}

//O(1) space complexity
public func binaryGap(_ A: Int) -> (start:Int, length:Int) {
    var crtGapIndex = 0
    var crtGapLength = 0
    
    var maxGapIndex = 0
    var maxGapLength = 0
    
    var wasZero : Bool = false
    
    var divider = A
    
    var i = 0 // the index of the digit
    
    repeat {
        let digit = divider % 2
        divider = divider / 2
        if digit == 1 {
            if wasZero {
                crtGapLength = i - crtGapIndex
                if maxGapLength < crtGapLength {
                    maxGapLength = crtGapLength
                    maxGapIndex = crtGapIndex
                }
            }
            wasZero = false
        }
        else {
            if !wasZero { // previous was one, start gap
                crtGapIndex = i
            }
            wasZero = true
        }
        i += 1
    }
    while divider > 0

    return (maxGapIndex, maxGapLength)
}
binaryGap(15).length
binaryGap(209).length
binaryGap(1041).length




//: [Next](@next)
