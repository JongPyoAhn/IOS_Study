//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/27.
// O

//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = arr[0]
//let m = arr[1]
//var result: [Int] = []
//var depth = 0
//var str = ""
//func dfs(_ depth: Int){
//    var isStr: Bool = true
//    if depth == m {
//        for i in 0..<m {
//            if i > 0, result[i] < result[i - 1]{
//                isStr = false
//            }
//        }
//        if isStr {
//            str += "\(result.map{String($0)}.joined(separator: " "))"
//            str += "\n"
//        }
//
//        return
//    }
//    for i in 1...n{
//        result.append(i)
//        dfs(depth + 1)
//        result.removeLast()
//    }
//}
//
//dfs(depth)
//print(str)
