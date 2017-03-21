//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/

/*
 Array A of N integers.
 
 Any integer P, such that 0 < P < N, splits this tape into two non-empty parts: A[0], A[1], ..., A[P − 1] and A[P], A[P + 1], ..., A[N − 1].
 
 The difference between the two parts is the value of: |(A[0] + A[1] + ... + A[P − 1]) − (A[P] + A[P + 1] + ... + A[N − 1])|
 == the absolute difference between the sum of the first part and the sum of the second part.
 
 For example: A = [3, 1, 2, 4, 3]
 
 We can split in four places:
 
 P = 1, difference = |3 − 10| = 7
 P = 2, difference = |4 − 9| = 5
 P = 3, difference = |6 − 7| = 1
 P = 4, difference = |10 − 3| = 7
 
 The solution is 1, the minimum difference

 Assume:
 
 N is an integer within the range [2..100,000];
 each element of array A is an integer within the range [−1,000..1,000].
 Complexity:
 
 time complexity is O(N);
 space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
 
 */




public func minimumTapeDifference(_ A : [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    let totalT  = A.reduce(0) { res, x in
        res + x
    }
    
    var leftT = 0
    var rightT = totalT
    var minDif = Int.max
    let n = A.count
    for p in 0 ..< n-1 {
        let x = A[p]
        leftT += x
        rightT -= x
        
        let dif = abs(leftT - rightT)
        minDif = min(minDif, dif)
    }
    return minDif
}
minimumTapeDifference([900, 100, -1500, 200, 100])


Int((4.0 - 3.14) * 100)