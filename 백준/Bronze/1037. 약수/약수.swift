import Foundation

let N = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map{ Int($0)! }
let smallNum = num.min()!
let largeNum = num.max()!

print(smallNum * largeNum)
