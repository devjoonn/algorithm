//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/17.
//MARK: - 9184

import Foundation

var W = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: 1,count: 21), count: 21), count: 21)

func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a <= 0 || b <= 0 || c <= 0 {
        return 1
    } else if a > 20 || b > 20 || c > 20 {
        return w(20, 20, 20)
    } else if W[a][b][c] != 1 {
        return W[a][b][c]
    } else if a < b && b < c {
        W[a][b][c] = w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
        return W[a][b][c]
    }
    W[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
    return W[a][b][c]
}

while true {
    let abc = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = abc[0]
    let b = abc[1]
    let c = abc[2]
    
    if a == -1 && b == -1 && c == -1 {
        break
    }
    print("w(\(a), \(b), \(c)) = \(w(a, b, c))")
}
