//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/27.
// 다시

//import Foundation
//정답
//let n = Int(String(readLine()!))!
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var operandArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var resultMax = -1000000001
//var resultMin = Int.max
//
//func dfs(_ i: Int, _ res: Int, _ add: Int, _ sub: Int, _ mul: Int, _ div: Int){
//
//    if i == n {
//        resultMax = max(resultMax, res)
//        resultMin = min(resultMin, res)
//        return
//    }
//    if add != 0{
//        dfs(i + 1, res + arr[i], add - 1, sub, mul, div)
//    }
//    if sub != 0{
//        dfs(i + 1, res - arr[i], add, sub - 1, mul, div)
//    }
//    if mul != 0{
//        dfs(i + 1, res * arr[i], add, sub, mul - 1, div)
//    }
//    if div != 0{
//        dfs(i + 1, res / arr[i], add, sub, mul, div - 1)
//    }
//}
//dfs(1, arr[0], operandArr[0], operandArr[1], operandArr[2], operandArr[3])
//print(resultMax)
//print(resultMin)

