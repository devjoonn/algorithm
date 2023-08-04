//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/04.
//MARK: - 9012
import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!
    var count = 0
    
    for i in input {
        if i == "(" {
            count += 1
        } else if i == ")" {
            count -= 1
            if count < 0 {
                break
            }
        }
    }
    print(count == 0 ? "YES" : "NO")
}
