import Foundation

let N = Int(readLine()!)!

if 1 <= N && N <= 9 {
    for i in 1...9 {
        print("\(N) * \(i) = \(N * i)")
    }
}
