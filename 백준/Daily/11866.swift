//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/11.
//MARK: - 11866
// N = 7 K = 3
// 1 2 3 4 5 6 7 = 2 7
// 1 2 4 5 6 7 = 4 6
// 1 2 4 5 7 = 1 5
// 1 4 5 7 = 3 4
// 1 4 5 = 2 3
// 1 4 = 0 2
// 4
// - 3 6 2 7 5 1 4

import Foundation

let NK = readLine()?.split(separator: " ").map{ Int($0)! }
let N = NK![0]
let K = NK![1]
var arr = Array(1...N)
var result = [Int]()
var count = K // 제거할 자리

while !arr.isEmpty {
    if count <= arr.count{
        result.append(arr[count-1])
        arr.remove(at: count-1)
        count += K-1 // 제거할 자리 K만큼 증가
    } else {
        count -= arr.count
    }
}

print("< \(result.map({ String($0) }).joined(separator: ", ")) >")



