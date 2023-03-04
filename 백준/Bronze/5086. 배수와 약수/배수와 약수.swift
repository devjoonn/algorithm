import Foundation

while true {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }
    var a = input[0]
    var b = input[1]
    
    if a == 0 || b == 0 {
        break
    }
    
    if b % a == 0 {
        print("factor")
    } else if a % b == 0 {
        print("multiple")
    } else {
        print("neither")
    }
}
