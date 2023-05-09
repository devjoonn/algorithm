//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/09.
//MARK: - 13241
import Foundation

let AB = readLine()?.split(separator: " ").map{ Int($0)! }
let A = AB![0]
let B = AB![1]

var num = lcm(A,B)
print(A * (B / num))


func lcm(_ a: Int, _ b: Int) -> Int {
    let n = a % b
    if n == 0 { return b }
    return lcm(b, n)
}
