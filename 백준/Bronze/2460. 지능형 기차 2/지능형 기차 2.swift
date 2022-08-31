import Foundation

var num = 0
var max = 0

for _ in 1...10 {
    let input = readLine()!
    let inAndOut = input.split(separator: " ").map { Int(String($0))! }
    
    num -= inAndOut[0]
    num += inAndOut[1]
    if max < num {
        max = num
    }
}
print(max)