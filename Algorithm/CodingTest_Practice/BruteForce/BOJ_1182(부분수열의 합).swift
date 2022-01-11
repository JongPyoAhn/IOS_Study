//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/13.
// 16%에서 틀림

//let ns = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = ns[0]
//let s = ns[1]
//
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var visited = Array(repeating: false, count: 21)
//
//var cnt = 0
//var sum = 0
//func dfs(_ depth: Int, _ start: Int){
//    if sum == s && depth >= 1{
//        cnt += 1
//    }
//    
//    for i in start..<n{
//        if !visited[i]{
//            visited[i] = true
//            sum += arr[i]
//            dfs(depth + 1, i)
//            visited[i] = false
//            sum -= arr[i]
//        }
//    }
//}
//
//dfs(0, 0)
//print(cnt)
