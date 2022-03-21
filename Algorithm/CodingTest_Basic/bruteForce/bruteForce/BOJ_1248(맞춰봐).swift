//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2022/03/15.
//

//import Foundation
//let n = Int(String(readLine()!))!
//let a = readLine()!.map{String($0)}
//var s = Array(repeating: Array(repeating: "", count: n*(n+1)/2), count: n*(n+1)/2)
//var cnt = 0
//for i in 0..<n{
//    for j in i..<n{
//        s[i][j] = a[cnt]
//        cnt += 1
//    }
//}
//
//
//var arr = [Int]()
//func check(_ idx: Int) -> Bool{
//    var sum = 0
//    for i in stride(from: idx, through: 0, by: -1){
//        sum += arr[i]
//        if s[i][idx] == "+" && sum <= 0 {return false}
//        if s[i][idx] == "0" && sum != 0 {return false}
//        if s[i][idx] == "-" && sum >= 0 {return false}
//    }
//    return true
//}
//
//func dfs(_ depth: Int){
//    if depth == n{
//        print(arr.map{String($0)}.joined(separator: " "))
//        exit(0)
//    }
//    for i in -10...10{
//        arr.append(i)
//        
//        if check(arr.count - 1) {dfs(depth + 1)}
//        arr.removeLast()
//    }
//    
//}
//dfs(0)
