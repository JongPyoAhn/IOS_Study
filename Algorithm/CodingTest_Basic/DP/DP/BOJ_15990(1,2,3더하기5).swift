//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/08/31.
// O

//let t = Int(String(readLine()!))!
//var dp = Array(repeating: Array(repeating: 0, count: 3), count: 100001)
//dp[1][0] = 1
//dp[1][1] = 0
//dp[1][2] = 0
//dp[2][0] = 0
//dp[2][1] = 1
//dp[2][2] = 0
//dp[3][0] = 1
//dp[3][1] = 1
//dp[3][2] = 1
//for i in stride(from: 4, through: 100000, by: 1){
//    dp[i][0] = (dp[i - 1][1] + dp[i - 1][2]) % 1000000009
//    dp[i][1] = (dp[i - 2][0] + dp[i - 2][2]) % 1000000009
//    dp[i][2] = (dp[i - 3][0] + dp[i - 3][1]) % 1000000009
//}
//for _ in 1...t{
//    let n = Int(String(readLine()!))!
//    print((dp[n][0] + dp[n][1] + dp[n][2]) % 1000000009)
//}
