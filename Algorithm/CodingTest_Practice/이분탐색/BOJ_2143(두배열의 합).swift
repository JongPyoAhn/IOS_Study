//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/10.
// 다시
//let t = Int(String(readLine()!))!
//var n = Int(String(readLine()!))!
//let nArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var m = Int(String(readLine()!))!
//let mArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var dict = [Int: Int]()
//
//for i in 0..<n{
//    for j in i..<n{
//        let sum = nArr[i...j].reduce(0, +)
//        if dict[sum] != nil{
//            dict[sum]! += 1
//        }else{
//            dict[sum] = 1
//        }
//    }
//}
//var result = 0
//for i in 0..<m{
//    for j in i..<m{
//        let sum = mArr[i...j].reduce(0, +)
//        if dict[t - sum] != nil{
//            result += dict[t - sum]!
//        }
//        
//    }
//}
//print(result)
