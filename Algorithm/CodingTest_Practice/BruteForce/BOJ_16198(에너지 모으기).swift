//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/13.
// 맞혔지만 찝찝하니까 다시

//import Foundation
//let n = Int(String(readLine()!))!
//var result = 0
//var sum = 0
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//func dfs(){
//
//    if arr.count == 2{
//        result = max(result, sum)
//        return
//    }
//
//    for i in 1..<n - 1{
//        if i + 1 >= arr.count{
//            continue
//        }
//        sum += arr[i - 1] * arr[i + 1]
//        let pop = arr.remove(at: i)
//        dfs()
//        arr.insert(pop, at: i)
//        sum -= (arr[i - 1] * arr[i + 1])
//
//    }
//}
//
//dfs()
//print(result)
