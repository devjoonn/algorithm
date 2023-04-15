//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/16.
// MARK: - BJ 2501
import Foundation

let nk = readLine()!.split(separator: " ").map{ Int($0)! }

let n = nk[0]
let k = nk[1]
var arr = [Int]()

for i in 1...n {
    if n % i == 0 {
        arr.append(i)
    }
}

if k == 1 {
    print(arr[0])
} else {
    if arr.count < k {
        print(0)
    } else {
        print(arr[k-1])
    }
}

