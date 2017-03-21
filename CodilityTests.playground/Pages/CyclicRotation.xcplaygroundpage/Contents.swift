//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/2-arrays/cyclic_rotation/
/*
 Zero-indexed array A of N integers. Rotation means that each element is shifted right by one index, and the last element of the array is also moved to the first place.
 
 
 Write a function:
 given array A of N integers and an integer K, returns the array A rotated K times
 
 
 For example, given array A = [3, 8, 9, 7, 6] and K = 3, the function should return [9, 7, 6, 3, 8].
 
 Assume:
 
 N and K are integers within the range [0..100];
 each element of array A is an integer within the range [−1,000..1,000].
 No performance requests
 */

public func rotK(_ A : [Int], _ K : Int) -> [Int] {
    let n = A.count
    var O = A
    
    for i in 0 ..< n {
        let a_idx = (n*K+i-K) % n
        O[i] = A[a_idx]
    }
    
    return O
}
rotK([3, -8, -1000, 7, 1000, 100] , 100)

rotK([3, 8, 9, 7, 6] , 5)

