//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/20.
//MARK: - 10650
import Foundation

let N = Int(readLine()!)!

var arr = [(Int, Int)]()

for _ in 0..<N {
    let xy = readLine()?.split(separator: " ").map{ Int($0)! }
    arr.append((xy![0],xy![1]))
    
}

arr.sort { (a, b) in
    if a.0 == b.0 { // arr[0][1] arr[1][1] 비교 이어서 ~
      return  a.1 < b.1 // 작은 수가 앞으로
    }
    return a.0 < b.0 // arr[0][0] arr[1][0] 비교 이어서 ~
}

for i in arr {
    print(i.0, i.1)
}
