import Foundation

struct Member {
    var age: Int
    var name: String
    var index: Int
}

let N = Int(readLine()!)!
var member: [Member] = []


for i in 0..<N {
    let person = readLine()!.split(separator: " ").map { a in String(a) }
    let A = Member(age: Int(person[0])!, name: person[1], index: i)
    member.append(A)
}

member.sort{ a, b in a.age == b.age ? a.index < b.index : a.age < b.age }

for i in 0..<N {
    print("\(member[i].age) \(member[i].name)")
}
