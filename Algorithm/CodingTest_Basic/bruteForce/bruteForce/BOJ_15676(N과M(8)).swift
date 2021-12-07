//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/30.
// O

//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var result = [String]()
//var resultStr = ""
//arr.sort()
//func dfs(_ depth: Int, _ start: Int){
//    if depth == m {
//        resultStr += "\(result.joined(separator: " "))"
//        resultStr += "\n"
//        return
//    }
//    for i in start..<n{
//        result.append(String(arr[i]))
//        dfs(depth + 1, i)
//        result.removeLast()
//    }
//}
//dfs(0, 0)
//print(resultStr)
