//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/30.
// 로직은맞앗는데 시간초과때매 다시봐야할듯.

//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//arr.sort()
//var depth = 0
//var resultStr = ""
//var result: [String] = []
//
//func dfs(_ depth: Int){
//    if depth == m {
//        resultStr += result.joined(separator: " ") + "\n"
//        return
//    }
//    for i in 0..<n{
//        result.append(String(arr[i]))
//        dfs(depth + 1)
//        result.removeLast()
//    }
//
//}
//
//dfs(depth)
//print(resultStr)
