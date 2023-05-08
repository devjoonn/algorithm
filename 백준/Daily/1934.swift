//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/08.
//MARK: - 1934 최소공배수
import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let AB = readLine()?.split(separator: " ").map{ Int($0)! }
    let A = AB![0]
    let B = AB![1]
    
    var num = lcm(A,B)
    print(A * (B / num))
}

func lcm(_ a: Int, _ b: Int) -> Int {
    let n = a % b
    if n == 0 { return b }
    return lcm(b, n)
}
