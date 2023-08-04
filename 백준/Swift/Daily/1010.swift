//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/27.
//MARK: - 1010
import Foundation

var res = Array(repeating: Array(repeating: 0, count: 31), count: 31)
let T = Int(readLine()!)!

for _ in 0..<T {
    let NM = readLine()?.split(separator: " ").map{ Int($0)! }
    let N = NM![0]
    let M = NM![1] 
    
    print(river(M,N))
    
}

func river(_ x: Int, _ y: Int) -> Int {
    if x == y || y == 0 {
        return 1
    }
    if res[x][y] != 0 {
        return res[x][y]
    }
    res[x][y] = river(x-1, y-1) + river(x-1, y)
    return res[x][y]
}

