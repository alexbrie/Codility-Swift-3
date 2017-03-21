//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/6-sorting/max_product_of_three/



func merge(_ A:[Int], _ B:[Int])->[Int] {
    var i = 0
    var j = 0
    var res = [Int]()
    while i < A.count && j < B.count {
        let c = A[i]
        let c1 = B[j]
        
        if c < c1 {
            res.append( c)
            i += 1
        }
        else {
            res.append(c1)
            j += 1
        }
    }
    for i1 in i..<A.count {
        res.append(A[i1])
    }
    for j1 in j..<B.count {
        res.append(B[j1])
    }
    return res
}

func mergeSort(_ A : [Int]) -> [Int] {
    if A.count > 1 {
        let half = A.count / 2
        let leftA = A[0..<half]
        let rightA = A[half..<A.count]
        return merge(mergeSort(Array(leftA)), mergeSort(Array(rightA)))
    }
    return A
}

//mergeSort([3, 1, 2, 4, 0])


public func maxtriplet(_ A :  [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    // sort array n log n
    
    let n = A.count
    var a = mergeSort(A)
    var pm1 = -1000*1000*1000
    var pm2 = pm1
    
    if n >= 3 {
        pm1 = a[n-1]*a[n-2]*a[n-3]
    }
    
    if n>=4 {
        pm2 = a[n-1]*a[1]*a[0]
    }
    
    return  max(pm1, pm2)
}


maxtriplet([-3, 1, 2, -2, 5, 6])
