//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/03.
//MARK: - 11050
import Foundation

let NK = readLine()?.split(separator: " ").map{ Int($0)! }
var N = NK![0]
var K = NK![1]

if K == 0 || N == K {
    print(1)
} else {
    let res = factorial(N) / (factorial(N-K) * factorial(K))
    print(res)
}


func factorial(_ input: Int) -> Int {
    var num = 1
    for i in 2..<input+1 {
        num *= i
    }
    return num
}
