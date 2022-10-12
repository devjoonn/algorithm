import Foundation


let N = Int(readLine()!)!
let M = readLine()!.split(separator: " ").map{ Double($0)! }
var sum: Double = 0
let maxM = M.max()!

for i in M {
    sum += Double(i) / maxM * 100
}
print(sum / Double(N))