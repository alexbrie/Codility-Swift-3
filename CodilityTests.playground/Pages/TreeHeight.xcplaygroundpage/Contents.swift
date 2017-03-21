//: [Previous](@previous)

import Foundation

// https://codility.com/programmers/lessons/99-future_training/tree_height/

// Utility: pretty(ish) print binary tree to Swift playgrounds console
func printTree(_ T : Tree?, level : Int = 0) {
    if let t = T  {
        print(String(repeating: "  ", count: level), t.x)
        printTree(t.l, level: level+1)
        printTree(t.r, level: level+1)
    }
}

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



func treeHeightRoot (_ T: Tree?)->Int {
    if let t = T {
        let leftH = treeHeightRoot(t.l)
        let rightH = treeHeightRoot(t.r)
        return max(leftH, rightH)+1
    }
    else {
        return 0
    }
}

func treeHeight (_ T: Tree?)->Int {
    printTree(T)
    if let t = T {
        return treeHeightRoot(t) - 1
    }
    return 0
}


//var t = Tree(5, Tree(4), Tree(5))
//solution(t)
//treeHeightRoot(Tree(5, Tree(3, Tree(20), Tree(21)), Tree(10, Tree(1))))

treeHeight(Tree(5, Tree(3, Tree(20), Tree(21)), Tree(10, Tree(1))))





