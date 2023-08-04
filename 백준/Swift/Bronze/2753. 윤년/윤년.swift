import Foundation

let line = readLine()!
let yoon = Int(line)!

if yoon % 4 == 0 && yoon % 100 != 0 || yoon % 400 == 0 {
    print("1")
} else {
    print("0")
}