import Foundation

let AB = readLine()!.split(separator: " ").map{ Double(String($0))! }
print(AB[0]/AB[1])