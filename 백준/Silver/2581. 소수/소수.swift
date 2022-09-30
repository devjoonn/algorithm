import Foundation

let M = Int(readLine()!)!
let N = Int(readLine()!)!
var isPrimeNum = true
var allPrimeNum = false
var num: [Int] = []
var sum = 0

for i in M...N {
    if i == 1 {
        isPrimeNum = false
    } else {
        for j in 2..<i {// 2~i 까지 순서대로 나눠서
            if i % j == 0 { //소수인지 확인
                isPrimeNum = false
            }
        }
        if isPrimeNum == true {
            num.append(i)
            allPrimeNum = true // 소수가 하나라도 있는지 확인
        }
    }
    isPrimeNum = true //전에 if문에서 isPrimeNum false된것 초기화
}

if allPrimeNum { //소수가 있어서 num배열에 값이 들어가면
    for n in 0..<num.count {
        sum += num[n]
    }
    print(sum)
    print(num.min()!)
} else {
    print(-1)
}