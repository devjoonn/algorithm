import Foundation

var num = 0
var maxN = 0

for i in 1...9 {
    let n = Int(readLine()!)!
    
    if n > maxN {
        num = i
        maxN = n
    }
}

print(maxN)
print(num)