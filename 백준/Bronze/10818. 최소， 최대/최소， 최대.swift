import Foundation

let N = Int(readLine()!)!
let numArr = readLine()!.split(separator: " ").map { Int(String($0))! }
print(numArr.min()!, numArr.max()!)