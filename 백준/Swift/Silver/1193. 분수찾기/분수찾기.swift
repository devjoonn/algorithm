import Foundation

var num = Int(readLine()!)!
var n : Int = 1

while true {
    var temp = num - n
    if temp <= 0 {
        if n % 2 == 0 {  // 짝수면
            print("\(num)/\(n - num + 1)")
            break
        } else {  // 홀수면
            print("\(n - num + 1)/\(num)")
            break
        }
    } else if temp > 0 {
        num = temp
        n += 1
    }
}
