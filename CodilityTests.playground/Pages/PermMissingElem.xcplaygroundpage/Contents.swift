//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/

/* 
Zero-indexed array A of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.
 
 Your goal is to find that missing element.
 
 Example: A = [2, 3, 1, 5]
 the function should return 4, as it is the missing element.
 
 Assume that:
 
 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
 
 Complexity:
 
 time complexity is O(N);
 space complexity is O(1), beyond input storage (not counting the storage required for input arguments).
 */


// Solutions:
// space O(N): hash all values
public func permMissingElem1(_ A : [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var hash = [Int:Int]()
    
    let n = A.count
    
    for x in A {
        hash[x]  = 1 //(hash[x] ?? 0) + 1
    }
    
    for v in 1...n+1 {
        if hash[v] == nil {
            return v
        }
    }

    return -1
}

// space O(1):
// because of the input restrictions, we know that all input elems are 1<=x<=N+1 and are distinct
public func permMissingElem(_ A : [Int]) -> Int {
    
    let n = A.count
    let sumAll1ToNp1 = (n+1)*(n+2)/2

    let termsSum = A.reduce(0) {
        $0 + $1
    }

    let missingElement = sumAll1ToNp1 - termsSum
    
    return missingElement
}

permMissingElem([4, 1, 2, 3])
permMissingElem([4, 1, 5, 3])
permMissingElem([4, 1, 3])

//: [Next](@next)
