import Foundation

let N = Int(readLine()!)! 

for i in 1...N {
    var star = ""
    if N - i != 0 {
        for _ in 1...N - i {
            star += " "
        }
    }
    for _ in 1...i {
        star += "*"
    }
    print(star)
}