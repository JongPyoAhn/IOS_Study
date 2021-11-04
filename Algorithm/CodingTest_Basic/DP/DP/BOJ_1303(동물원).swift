//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/11/04.
// 맞았지만 다시풀어보자.


//let n = Int(String(readLine()!))!
//var dp = Array(repeating: Array(repeating: 0, count: 3), count: n + 1)
//dp[1][0] = 1
//dp[1][1] = 1
//dp[1][2] = 1
//for i in stride(from: 2, through: n, by: 1) {
//    dp[i][0] = (dp[i - 1][1] + dp[i - 1][2] + dp[i - 1][0]) % 9901
//    dp[i][1] = (dp[i - 1][2] + dp[i - 1][0]) % 9901
//    dp[i][2] = (dp[i - 1][1] + dp[i - 1][0])  % 9901
//}
//print((dp[n][0] + dp[n][1] + dp[n][2]) % 9901)
