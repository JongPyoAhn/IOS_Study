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
//            queue.append(((calculatedA, calculatedB, c), pop.1 + 1))//A에서 뺴고 B에서 넣고
//            queue.append(((calculatedA, b, calculatedC), pop.1 + 1)) //A에서 빼고 B에서 넣고
//
//        }
//        if b.count > 0 {
//            var calculatedA = a
//            var calculatedB = b
//            var calculatedC = c
//            let popedB = calculatedB.removeLast()
//            calculatedA.append(popedB)
//            calculatedC.append(popedB)
//            queue.append(((calculatedA, calculatedB, c), pop.1 + 1))//B에서 뺴고 A에서 넣고
//            queue.append(((a, calculatedB, calculatedC), pop.1 + 1)) //B에서 빼고 C에서 넣고
//
//        }
//
//        if c.count > 0 {
//            var calculatedA = a
//            var calculatedB = b
//            var calculatedC = c
//            let popedC = calculatedC.removeLast()
//            calculatedA.append(popedC)
//            calculatedB.append(popedC)
//            queue.append(((calculatedA, b, calculatedC), pop.1 + 1))//C에서 뺴고 A에서 넣고
//            queue.append(((a, calculatedB, calculatedC), pop.1 + 1)) //C에서 빼고 B에서 넣고
//
//        }
//    }
//
//}
//bfs(aStatus, bStatus, cStatus)
