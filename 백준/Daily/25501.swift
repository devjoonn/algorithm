//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/14.
//MARK: - 25501

import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let S = readLine()!.map{ $0 }
    let result = recursion(s: S, l: 0, r: S.count - 1, count: 1)
    print(result.0, result.1) // (펠린드롬 시 1, 아님 0 | 반복 수)
}

func recursion(s: [Character], l: Int, r: Int, count: Int) -> (Int, Int) {
    if l >= r {
        return (1, count)
    } else if s[l] != s[r] {
        return (0, count)
    } else {
        return recursion(s: s, l: l+1, r: r-1, count: count+1)
    }
}



