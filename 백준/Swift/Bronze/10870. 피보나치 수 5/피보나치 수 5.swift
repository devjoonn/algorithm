import Foundation

let N = Int(readLine()!)!

func fibonacci(_ x : Int) -> Int {
    if x <= 1 {
        return x
    }
    
    return fibonacci(x - 1) + fibonacci(x - 2)
}

print(fibonacci(N))