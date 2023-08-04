import Foundation

let N = Int(readLine()!)! // N이 10이라 가정

for i in 1...N { // i가 1일 떄 N은 9
    var star = "" // i가 2일 경우 다시 또 초기화
    if N - i != 0 {
        for _ in 1...N - i { // N-1 즉 빈칸을 8번 추가 , N-2 경우 빈칸을 7번 추가
            star += " "
        }
    }
    for _ in 1...i { // 뒤에 *을 i의 반복값만큼 추가
        star += "*"
    }
    print(star)
}
