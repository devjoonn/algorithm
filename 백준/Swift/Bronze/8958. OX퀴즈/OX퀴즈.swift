import Foundation

let n = Int(readLine()!)!
var StringArr: [Character] = []

for _ in 1...n {
    StringArr = Array(readLine()!)
    var OXcount: Int = 0
    var fakeCount: Int = 0
    
    for i in StringArr {
        if i == "O" {
            fakeCount += 1 // O인 경우 fakeCount의 갯수가 늘어나고
            OXcount += fakeCount // 추가된 fakeCount를 진짜 카운트에 추가
        } else {
            fakeCount = 0 // X인 경우 fakeCount를 초기화 시킴
        }
    }
    print(OXcount)
}