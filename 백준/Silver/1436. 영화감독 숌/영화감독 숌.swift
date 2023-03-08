import Foundation

let N = Int(readLine()!)!
var num = 666
var M = 0

while true {
    let str = String(num)
    var cnt = 0
    
    for i in str {
        if i == "6" {
            cnt += 1
        } else {
            cnt = 0
        }
        if cnt == 3 {
            M += 1
        }
    }
    if N == M {
        break
    }
    num += 1
}

print(num)