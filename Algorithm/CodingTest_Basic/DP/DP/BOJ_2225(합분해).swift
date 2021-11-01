//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/10/28.
//

//let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//let k = nk[1]
//var dp = Array(repeating: Array(repeating: 0, count: 201), count: 201)
//
//for i in 0...200 {
//    dp[i][0] = 1
//}
//
//for i in stride(from: 1, through: 200, by: 1) {
//    for j in 1...200 {
//        dp[i][j] = (dp[i - 1][j] + dp[i][j - 1]) % 1000000000
//    }
//}
//
//print(dp[k][n])
