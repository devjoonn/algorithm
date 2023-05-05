//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/04.
//MARK: - 4949
import Foundation

while true {
    let input = readLine()!
    var stack = [Character]()
    
    if input == "." {
        break
    }
    for i in input {
        if !["[", "]", "(", ")"].contains(i) { // []() 있는지 확인 없으면 넘김
            continue
        }
        if i == "]" && stack.last == "[" {
            stack.removeLast()
        } else if i == ")" && stack.last == "(" {
            stack.removeLast()
        } else {
            stack.append(i)
        }
    }
    print(stack.isEmpty == true ? "YES" : "NO")
}
