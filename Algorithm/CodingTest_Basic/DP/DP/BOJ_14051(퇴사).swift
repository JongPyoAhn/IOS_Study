//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/10/08.
//

//let n = Int(String(readLine()!))!
//var t: [Int] = Array(repeating: 0, count: n + 1)
//var p: [Int] = Array(repeating: 0, count: n + 1)
//var dp = Array(repeating: 0, count: 1001)
//
//for i in 1...n {
//    let TP = readLine()!.split(separator: " ").map{Int(String($0))!}
//    t[i] = TP[0]
//    p[i] = TP[1]
//    dp[i] = p[i]
//}
//
//for i in stride(from: n, through: 1, by: -1){
//    if t[i] + i <= n + 1{
//        dp[i] = max(dp[i + 1], dp[i + t[i]] + p[i])
//    }else {
//        dp[i] = dp[i + 1]
//    }
//}
//print(dp.max()!)

