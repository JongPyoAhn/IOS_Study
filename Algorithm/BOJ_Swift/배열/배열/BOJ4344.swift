////
////  main.swift
////  배열
////
////  Created by 안종표 on 2021/07/05.
////  소수점 자를 수 있냐 없냐를 묻는 문제인듯
//
//import Foundation
//let C = Int(readLine()!)!
//for _ in 0...C-1 {
//    let N = readLine()!.split(separator: " ").map{ value in Int(value)! }
//    var sum = 0
//    var avg = 0
//    var cnt = 0
//    for j in 1...N[0] {
//        sum = sum + N[j]
//    }
//    avg = sum / N[0]
//    for k in 1...N[0] {
//        if N[k] > avg{
//            cnt = cnt + 1
//        }
//    }
//    let a = String(format: "%.3f", Double(cnt) / Double(N[0]) * 100 )
//    print("\(a)%")
//}
