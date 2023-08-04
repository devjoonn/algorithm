import Foundation

var num = Int(readLine()!)!
var divide = 2

while true {
    if num == 1 {
        break
    }
    if num % divide != 0 {
        divide += 1
    } else {
        num = num / divide
        print(divide)
        if num == 1 {
            break
        }
    }
}