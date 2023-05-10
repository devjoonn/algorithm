//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/09.
//MARK: - 1735
import Foundation

let firstAB = readLine()?.split(separator: " ").map{ Int($0)! }
let secondAB = readLine()?.split(separator: " ").map{ Int($0)! }

let A = (firstAB![0] * secondAB![1]) + (firstAB![1] * secondAB![0])
let B = firstAB![1] * secondAB![1]

let div = gcd(A,B)

print("\(A/div) \(B/div)")


func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}
