
import Foundation

let n = Int(readLine()!)!

for _ in 1...n {
    let test = readLine()!.split(separator: " ")
    let R = Int(test[0])!
    let S = test[1]
    
    for j in S {
        for _ in 1...R {
            print("\(j)", terminator: "") //한줄로
        }
    }
    print("") //줄간격 띄우기용
}
