//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/

/*
 A non-empty zero-indexed array A consists of N integers. Each element of the array can be paired with another element that has the same value, except for one element that is left unpaired.
 
 For example
 A: 9, 3, 9, 3, 9, 7, 9
 the element at index 5 has value 7 and is unpaired
 
 Given an array A, return the value of the unpaired element.

 Assumptions:
 each element of array A is an integer within the range [1..1,000,000,000];
 all but one of the values in A occur an even number of times.

time complexity is O(N);
space complexity is O(1), beyond input storage (not counting the storage required for input arguments)
 */

//Solutions:
//O(n) space complexity
public func pairedInts1(_ A : [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var hash = [Int:Int]()
    for (i, x) in A.enumerated() {
        if hash[x] != nil {
            hash.removeValue(forKey: x)
        }
        else {
            hash.updateValue(i, forKey: x)
        }
    }
    return hash.popFirst()?.key ?? 0
}

//O(1) space complexity: just xor all elements, the result will be the odd one (because if I xor any number with itself, the result is zero; this works even if I xor numbers in random order, because xor operation is commutative and associative

public func pairedInts(_ A : [Int]) -> Int {
    var acc = 0
    for x in A {
        acc ^= x
    }
    return acc
}



pairedInts([1, 1, 2, 2, 3])

//pairedInts([9, 3, 9, 3, 9, 7, 9])
