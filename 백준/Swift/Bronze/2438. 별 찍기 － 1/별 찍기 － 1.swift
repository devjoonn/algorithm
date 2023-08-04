import Foundation

let N = Int(readLine()!)!
var star = "*"

for _ in 0..<N {
    print("\(star)")
    star = star + "*"
}