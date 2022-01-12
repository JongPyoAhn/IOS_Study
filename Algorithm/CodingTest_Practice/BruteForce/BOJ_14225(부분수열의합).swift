//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/11.
// 다시

//let n = Int(String(readLine()!))!
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var visited = Array(repeating: false, count: 21)
//var sum = 0
//var result = Array(repeating: false, count: 2000001)
//
//func dfs(_ depth: Int, _ start: Int){
//    if depth >= 1{
//        result[sum] = true
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
//dfs(0, 0)
//
//for i in 1...2000000{
//    if result[i] == false{
//        print(i)
//        break
//    }
//}
