//: [Previous](@previous)

import Foundation

/*
 https://codility.com/programmers/lessons/12-euclidean_algorithm/chocolates_by_numbers/

 ... too long to sum up; better read the description online
time complexity is O(log(N+M));
space complexity is O(log(N+M)).
 */

public func solution(_ N : Int, _ M : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    var hash = [Int : Int]()
    var eatNow = 0
    var startIndex = 0
    var eaten = 0
    
    while hash[startIndex] == nil {
        hash[startIndex] = 1
        eatNow = 1 + (N-startIndex-1) / M
        startIndex = (startIndex + eatNow * M) % N
        eaten += eatNow
    }
    return eaten
}

/* Obs: the chocolates end when we reach the smallest common multiple*/

solution(6, 8)
solution(5, 4)
solution(3, 5)
solution(23, 16)
solution(10, 4)
solution(10, 1)

