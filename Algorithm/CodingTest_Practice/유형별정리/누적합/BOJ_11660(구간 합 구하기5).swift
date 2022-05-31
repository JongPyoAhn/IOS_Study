//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/31.
// 다시

//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//
//var arr = [[Int]]()
//
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//var preFix = Array(repeating: Array(repeating: 0, count: 1025), count: 1025)
//
//for i in 0..<n{
//    for j in 0..<n{
//        preFix[i + 1][j + 1] = preFix[i][j + 1] + preFix[i + 1][j] - preFix[i][j] + arr[i][j]
//    }
//}
//var str = ""
//for _ in 0..<m{
//    let xy = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let xOne = xy[0]
//    let yOne = xy[1]
//    let xTwo = xy[2]
//    let yTwo = xy[3]
//    let sum = preFix[xTwo][yTwo] - (preFix[xOne - 1][yTwo] + preFix[xTwo][yOne - 1]) + preFix[xOne - 1][yOne - 1]
//    str += "\(sum)\n"
//
//}
//print(str)
