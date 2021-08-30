//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/08/30.
//

//let n = Int(readLine()!)! //구매하려고 하는 카드 수
//let pArr = readLine()!.split(separator: " ").map{Int($0)!} //카드의 가격
//var dp = Array(repeating: 0, count: 10001)
//for i in 0..<n {
//    dp[i+1] = pArr[i]
//}
//
//for i in stride(from: 2, through: n, by: 1) {
//    for j in stride(from: 1, through: i - 1, by: 1) {
//        dp[i] = dp[i - j] + dp[j] > dp[i] ? dp[i - j] + dp[j] : dp[i]
//    }
//}
//
//print("\(dp[n])")
