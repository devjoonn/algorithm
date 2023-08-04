import Foundation

var stuList = [Int]()


for i in 1...30 {
    stuList.append(i)
}

for _ in 0..<28 {
    let stu = Int(readLine()!)!
    if stuList.contains(stu) == true { // stuList에 input한 값이 있는지 확인
        stuList.remove(at: stuList.firstIndex(of: stu)!) // stuList 에서 입력한 값 삭제
    }
}

for i in 0..<stuList.count {
    print(stuList[i])
}