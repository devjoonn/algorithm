import Foundation

let T = Int(readLine()!)!

for i in 0..<T {
    let num = readLine()!.split(separator: " ")
    let a = Int(num[0])!
    let b = Int(num[1])!
    print("Case #\(i+1): \(a+b)")
}