//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/11/08.
// O

//import Foundation
//let k = Int(String(readLine()!))!
//let arr = readLine()!.split(separator: " ").map{String($0)}
//var visited = Array(repeating: false, count: 10)
//var result: [Int] = []
//var resultArr: [String] = []
//func dfs(_ depth: Int){
//    if depth == arr.count + 1{
//        for i in 0..<arr.count{
//            if result[i] > result[i + 1] && arr[i] == ">"{
//                continue
//            }else if result[i] < result[i + 1] && arr[i] == "<"{
//                continue
//            }else{return}
//        }
//        resultArr.append(result.map{String($0)}.joined(separator: ""))
//        return
//    }
//    for i in 0...9 {
//        if !visited[i] {
//            visited[i] = true
//            result.append(i)
//            dfs(depth + 1)
//            result.removeLast()
//            visited[i] = false
//        }
//    }
//}
//dfs(0)
//print(resultArr.max()!)
//print(resultArr.min()!)

