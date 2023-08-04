import Foundation

let N = Int(readLine()!)!
let num = readLine()!
var sum = 0

for i in num {
    sum = sum + Int(String(i))!
}
print(sum)