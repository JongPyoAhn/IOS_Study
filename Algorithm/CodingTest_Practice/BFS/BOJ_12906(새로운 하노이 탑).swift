//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/04.
//

//import Foundation
////막대 A에는 원판 A만, 막대 B는 원판 B만, 막대 C는 원판 C만 놓여져 있어야 한다.
//let aArr = readLine()!.split(separator: " ").map{String($0)}
//let bArr = readLine()!.split(separator: " ").map{String($0)}
//let cArr = readLine()!.split(separator: " ").map{String($0)}
//
//let aCount = Int(aArr[0])!//원판의 개수
//let bCount = Int(bArr[0])!
//let cCount = Int(cArr[0])!
//
//var aStatus = [String]()
//var bStatus = [String]()
//var cStatus = [String]()
//
//if aCount > 0 {
//    aStatus = aArr[1].map{String($0)}
//}
//if bCount > 0 {
//    bStatus = bArr[1].map{String($0)}
//}
//if cCount > 0{
//    cStatus = cArr[1].map{String($0)}
//}
//
//func bfs(_ aStatus: [String], _ bStatus: [String], _ cStatus: [String]){
//    var queue = [(([String], [String], [String]), Int) ]()
//    queue.append(((aStatus, bStatus, cStatus), 0))
//    var visited = Set<String>()
//    visited.insert("\(aStatus.joined(separator: "")), \(bStatus.joined(separator: "")), \(cStatus.joined(separator: ""))")
//    var idx = 0
//    while queue.count > idx{
//        let pop = queue[idx]
//        idx += 1
//        let a = pop.0.0
//        let b = pop.0.1
//        let c = pop.0.2
//        if !a.contains("B") && !a.contains("C") && !b.contains("A") && !b.contains("C") && !c.contains("A") && !c.contains("B") {
//            print(pop.1)
//            break
//        }
//
//        if a.count > 0 {
//            var calculatedA = a
//            var calculatedB = b
//            var calculatedC = c
//            let popedA = calculatedA.removeLast()
//            calculatedB.append(popedA)
//            calculatedC.append(popedA)
//
//            let calAtoString = calculatedA.joined()
//            let calBtoString = calculatedB.joined()
//            let calCtoString = calculatedC.joined()
//
//            let atoString = a.joined()
//            let btoString = b.joined()
//            let ctoString = c.joined()
//
//
//            if !visited.contains("\(calAtoString), \(calBtoString), \(ctoString)"){
//                queue.append(((calculatedA, calculatedB, c), pop.1 + 1))//A에서 뺴고 B에서 넣고
//                visited.insert("\(calAtoString), \(calBtoString), \(ctoString)")
//            }
//            if !visited.contains("\(calAtoString), \(btoString), \(calCtoString)"){
//                queue.append(((calculatedA, b, calculatedC), pop.1 + 1)) //A에서 빼고 B에서 넣고
//                visited.insert("\(calAtoString), \(btoString), \(calCtoString)")
//            }
//
//
//        }
//        if b.count > 0 {
//            var calculatedA = a
//            var calculatedB = b
//            var calculatedC = c
//            let popedB = calculatedB.removeLast()
//            calculatedA.append(popedB)
//            calculatedC.append(popedB)
//
//            let calAtoString = calculatedA.joined()
//            let calBtoString = calculatedB.joined()
//            let calCtoString = calculatedC.joined()
//
//            let atoString = a.joined()
//            let btoString = b.joined()
//            let ctoString = c.joined()
//
//            if !visited.contains("\(calAtoString), \(calBtoString), \(ctoString)"){
//                queue.append(((calculatedA, calculatedB, c), pop.1 + 1))//B에서 뺴고 A에서 넣고
//                visited.insert("\(calAtoString), \(calBtoString), \(ctoString)")
//            }
//            if !visited.contains("\(atoString), \(calBtoString), \(calCtoString)"){
//                queue.append(((a, calculatedB, calculatedC), pop.1 + 1)) //B에서 빼고 C에서 넣고
//                visited.insert("\(atoString), \(calBtoString), \(calCtoString)")
//            }
//        }
//
//        if c.count > 0 {
//            var calculatedA = a
//            var calculatedB = b
//            var calculatedC = c
//            let popedC = calculatedC.removeLast()
//            calculatedA.append(popedC)
//            calculatedB.append(popedC)
//
//            let calAtoString = calculatedA.joined()
//            let calBtoString = calculatedB.joined()
//            let calCtoString = calculatedC.joined()
//
//            let atoString = a.joined()
//            let btoString = b.joined()
//            let ctoString = c.joined()
//
//            if !visited.contains("\(calAtoString), \(btoString), \(calCtoString)"){
//                queue.append(((calculatedA, b, calculatedC), pop.1 + 1))//C에서 뺴고 A에서 넣고
//                visited.insert("\(calAtoString), \(btoString), \(calCtoString)")
//            }
//            if !visited.contains("\(atoString), \(calBtoString), \(calCtoString)"){
//                queue.append(((a, calculatedB, calculatedC), pop.1 + 1)) //C에서 빼고 B에서 넣고
//                visited.insert("\(atoString), \(calBtoString), \(calCtoString)")
//            }
//
//        }
//    }
//
//}
//bfs(aStatus, bStatus, cStatus)
