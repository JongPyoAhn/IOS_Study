//
//  BOJ_2133(타일채우기).swift
//  DP
//
//  Created by 안종표 on 2021/11/11.
//

//import Foundation
//let n = Int(String(readLine()!))!
//var dp = Array(repeating: 0 ,count: 31)
//
//dp[0] = 1
//dp[2] = 3
//for i in stride(from: 4, through: n, by: 1){
//  dp[i] = dp[i - 2] * 3
//  for j in  stride(from: 4, through: i, by: 2){
//    dp[i] += dp[i - j] * 2
//  }
//  }
//print(dp[n])
