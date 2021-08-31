//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/08/31.
// O

//let n = Int(readLine()!)! //구매하려고하는 카드의개수
//let arr = readLine()!.split(separator: " ").map{Int($0)!}
//var dp = Array(repeating: 0, count: 10001)
//
//for i in 0..<n {
//    dp[i + 1] = arr[i]
//}
//
//for i in stride(from: 2, through: n, by: 1) {
//    for j in stride(from: 1, to: i, by: 1) {
//        dp[i] = dp[i-j] + dp[j] > dp[i] ? dp[i] : dp[i-j] + dp[j]
//    }
//}
//
//print("\(dp[n])")
