//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/02.
//MARK: - 10773
import Foundation

let K = Int(readLine()!)!
var arr = [Int]()
var sum = 0

for _ in 0..<K {
    let num = Int(readLine()!)!
    
    if num == 0 {
        arr.removeLast()
    } else {
        arr.append(num)
    }
}

for i in arr {
    sum += i
}
print(sum)

