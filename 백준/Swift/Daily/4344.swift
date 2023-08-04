//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/22.
//MARK: - 4344
import Foundation

let C = Int(readLine()!)!

for _ in 0..<C {
    var cases = readLine()!.split(separator: " ").map{ Int($0)! }
    let repeatNum = cases[0]
    cases.remove(at: 0)
    var count = 0
    
    let avg = cases.reduce(0, +) / repeatNum
    
    for j in 0..<repeatNum {
        if cases[j] > avg {
            count += 1
        }
    }
    
    let result = String(format: "%.3f", Double(count) / Double(repeatNum) * 100)
    print("\(result)%")
}

