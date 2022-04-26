//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/04/26.
//

//import Foundation
//let sn = readLine()!.split(separator: " ").map{String($0)}
//let s = Int(sn[0])!
//var n = [Int]()
//for i in Array(sn[1]){
//    n.append(Int(String(i))!)
//}
//
//let arr = [
//    [[0, 1, 0], [1, 0, 1], [0, 0, 0], [1, 0, 1], [0, 1, 0]],
//    [[0, 0, 0], [0, 0, 1], [0, 0, 0], [0, 0, 1], [0, 0, 0]],
//    [[0, 1, 0], [0, 0, 1], [0, 1, 0], [1, 0, 0], [0, 1, 0]],
//    [[0, 1, 0], [0, 0, 1], [0, 1, 0], [0, 0, 1], [0, 1, 0]],
//    [[0, 0, 0], [1, 0, 1], [0, 1, 0], [0, 0, 1], [0, 0, 0]],
//    [[0, 1, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1], [0, 1, 0]],
//    [[0, 1, 0], [1, 0, 0], [0, 1, 0], [1, 0, 1], [0, 1, 0]],
//    [[0, 1, 0], [0, 0, 1], [0, 0, 0], [0, 0, 1], [0, 0, 0]],
//    [[0, 1, 0], [1, 0, 1], [0, 1, 0], [1, 0, 1], [0, 1, 0]],
//    [[0, 1, 0], [1, 0, 1], [0, 1, 0], [0, 0, 1], [0, 1, 0]]
//]
//
//for r in 0..<5{
//    if r % 2 == 0{
//        for i in 0..<n.count{
//            let d = n[i]
//            print(" ", terminator: "")
//            for _ in 0..<s{
//                print(arr[d][r][1] == 1 ? "-" : " ", terminator: "")
//            }
//            print(" ", terminator: "")
//            print(i == n.count - 1 ? "\n" : " ", terminator: "")
//        }
//    }else{
//        for _ in 0..<s{
//            for i in 0..<n.count{
//                let d = n[i] //현재 수
//                print(arr[d][r][0] == 1 ? "|" : " ", terminator: "")
//                for _ in 0..<s{
//                    print(" ", terminator: "")
//                }
//                print(arr[d][r][2] == 1 ? "|" : " ", terminator: "")
//                print(" ",terminator: "") //각 숫자사이의 공백
//            }
//            print()
//        }
//    }
//}
