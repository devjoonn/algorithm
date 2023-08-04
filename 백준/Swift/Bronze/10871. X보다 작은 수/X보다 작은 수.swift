import Foundation

let firstLine = readLine()!.components(separatedBy: " ")
let secondLine = readLine()!.components(separatedBy: " ")


for i in secondLine {
    if Int(i)! < Int(firstLine[1])! {
        print(i)
    }
}

// map(_:)과 Int의 이니셜라이저를 통해 Int 타입으로 변환할 때 String.SubSequence -> Int 보다 String.SubSequence -> String -> Int의 수행속도가 더 빠르다는 것을 알게 됨.
