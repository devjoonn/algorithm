//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/21.
//MARK: - 5622
import Foundation

let str = readLine()!
var changeStr = [Int]()
var sum = 0

for i in str {
    if i == "A" || i == "B" || i == "C" {
        changeStr.append(3)
    } else if i == "D" || i == "E" || i == "F" {
        changeStr.append(4)
    } else if i == "G" || i == "H" || i == "I" {
        changeStr.append(5)
    } else if i == "J" || i == "K" || i == "L" {
        changeStr.append(6)
    } else if i == "M" || i == "N" || i == "O" {
        changeStr.append(7)
    } else if i == "P" || i == "Q" || i == "R" || i == "S" {
        changeStr.append(8)
    } else if i == "T" || i == "U" || i == "V" {
        changeStr.append(9)
    } else if i == "W" || i == "X" || i == "Y" || i == "Z" {
        changeStr.append(10)
    }
}

for i in 0..<changeStr.count {
    sum += changeStr[i]
}

print(sum)
