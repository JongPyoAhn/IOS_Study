//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/30.
// O
//
//import Foundation
//let abc = readLine()!.split(separator: " ").map{Int(String($0))!}
//let readA = abc[0]
//let readB = abc[1]
//let readC = abc[2]
//
//var equlStone = 0
//var sum = readA + readB + readC
//func bfs(){
//    var queue = [(Int, Int, Int)]()
//    var visited = Set<String>()
//    queue.append((readA, readB, readC))
//    visited.insert("\(readA), \(readB), \(readC)")
//    var idx = 0
//    while queue.count > idx{
//        let pop = queue[idx]
//        idx += 1
//        let a = pop.0
//        let b = pop.1
//        let c = pop.2
//
//        if a == b && b == c {
//            equlStone = 1
//            break
//        }
//
//        if (a + b + c) % 3 == 0{
//            if a != b {
//                if a < b && !visited.contains("\(a + a), \(b - a), \(c)"){
//                    queue.append((a + a, b - a, c))
//                    visited.insert("\(a + a), \(b - a), \(c)")
//
//                }
//                if a > b && !visited.contains("\(a - b), \(b + b), \(c)"){
//                    queue.append((a - b, b + b, c))
//                    visited.insert("\(a - b), \(b + b), \(c)")
//                }
//            }
//
//            if b != c {
//                if b < c && !visited.contains("\(a), \(b + b), \(c - b)"){
//                    queue.append((a, b + b, c - b))
//                    visited.insert("\(a), \(b + b), \(c - b)")
//                }
//                if b > c && !visited.contains("\(a), \(b - c), \(c + c)"){
//                    queue.append((a, b - c, c + c))
//                    visited.insert("\(a), \(b - c), \(c + c)")
//                }
//            }
//            if a != c{
//                if a < c && !visited.contains("\(a + a), \(b), \(c - a)"){
//                    queue.append((a + a, b, c - a))
//                    visited.insert("\(a + a), \(b), \(c - a)")
//                }
//                if a > c && !visited.contains("\(a - c), \(b), \(c + c)"){
//                    queue.append((a - c, b, c + c))
//                    visited.insert("\(a - c), \(b), \(c + c)")
//                }
//
//            }
//
//        }
//    }
//}
//
//bfs()
//print(equlStone)
