//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/18.
//MARK: - 24416

import Foundation

let num = Int(readLine()!)!

func fib(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    } else {
        return (fib(n-1) + fib(n-2))
    }
}

print(fib(num), num-2)
