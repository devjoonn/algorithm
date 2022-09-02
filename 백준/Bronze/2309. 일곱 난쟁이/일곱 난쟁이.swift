import Foundation
var height: Array<Int> = []
var first = 0
var second = 0

// 난쟁이 키 배열에 추가
for _ in 1...9 {
    height.append(Int(readLine()!)!)
}

// 가짜 난쟁이 키 합
let fakeHeight: Int = height.reduce(0, +) - 100

for i in 0...7{
    for j in i+1...8 {
        if height[i] + height[j] == fakeHeight { // 가짜난쟁이를 발견한다면
            first = height[i]
            second = height[j]
            break // 값을 저장하고 반복문 탈출
        }
    }
}

// 가짜 난쟁이를 기존 배열에서 제거
height.remove(at: height.firstIndex(of: first)!)
height.remove(at: height.firstIndex(of: second)!)

for i in height.sorted() {
    print(i)
}