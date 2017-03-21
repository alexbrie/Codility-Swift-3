//: [Previous](@previous)

import Foundation

// this is not a Codility lesson but seems to appear in their tests. 

// http://siyang2notleetcode.blogspot.ro/2015/02/amplitude-of-tree.html
// https://github.com/faizann/binary_tree_amplitude



public class Tree {
    public var x : Int = 0
    public var l : Tree?
    public var r : Tree?
    public init() {}
    public init(_ v : Int, _ lt : Tree? = nil, _ rt : Tree? = nil) {
        x = v
        l = lt
        r = rt
    }
}

func minMaxPath(_ t: Tree)->(Int, Int, Int) {
    var m = t.x
    var M = t.x
    var mML = (0, m, M)
    var mMR = (0, m, M)
    var ampL : Int = 0
    var ampR : Int = 0
    
    
    if t.l == nil && t.r == nil {
        return (0, m, m)
    }
    if t.l != nil {
        mML = minMaxPath(t.l!)
        ampL = max(max(abs(mML.2 - t.x), abs(mML.1-t.x)), mML.0)
    }
    if t.r != nil {
        mMR = minMaxPath(t.r!)
        ampR = max(max(abs(mMR.2 - t.x), abs(mMR.1-t.x)), mMR.0)
    }
    
    
    //    print("*",t.x, ampL, ampR)
    
    if ampL > ampR {
        m = min(mML.1, t.x)
        M = max(mML.2, t.x)
    }
    else {
        m = min(mMR.1, t.x)
        M = max(mMR.2, t.x)
    }
    
    //    print (M-m, m, M)
    return (M-m, m, M)
}

func btAmplitude(_ T: Tree?)->Int {
    if let t = T {
        let (amp, _, _) = minMaxPath(t)
        return amp
    }
    return 0
}

btAmplitude(Tree(5, Tree(3, Tree(20), Tree(21)), Tree(10, Tree(1))))

btAmplitude(Tree(5, Tree(8, Tree(12), Tree(2)), Tree(9, Tree(8, Tree(2)), Tree(4, Tree(5)))))


