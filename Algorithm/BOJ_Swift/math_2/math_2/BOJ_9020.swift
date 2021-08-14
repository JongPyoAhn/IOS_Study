//
//  main.swift
//  math_2
//
//  Created by 안종표 on 2021/08/08.
//

//let T = Int(readLine()!)!
//
//let n = 10000
//var arr: [Int] = Array(repeating: 0, count: n + 1)
//for i in 2...n {
//    arr[i] = i
//}
//
//for k in 2...n {
//    for j in stride(from: k + k, through: n, by: k) {
//        arr[j] = 0
//    }
//}
//
//for _ in 1...T {
//    let scan = Int(readLine()!)!
//    var p1 = scan / 2
//    var p2 = scan / 2
//    while true{
//        
//        if (arr[p1] + arr[p2]) == scan {
//            print("\(p1) \(p2)")
//            break
//        }else {
//            p1 -= 1
//            p2 += 1
//        }
//    }
//}
