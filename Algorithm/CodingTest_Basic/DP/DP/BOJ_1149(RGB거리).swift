//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/11/02.
//

//import Foundation
//
//let n = Int(String(readLine()!))!
//var dp = Array(repeating: Array(repeating: 1001, count: 3), count: 1001)
//var rgb: [[Int]] = [[]]
//for _ in 1...n{
//    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//    rgb.append(arr)
//}
//dp[1][0] = rgb[1][0]
//dp[1][1] = rgb[1][1]
//dp[1][2] = rgb[1][2]
//
//for i in stride(from: 2, through: n, by: 1){
//    dp[i][0] = min(dp[i - 1][1],dp[i - 1][2]) + rgb[i][0]
//    dp[i][1] = min(dp[i - 1][0] , dp[i - 1][2]) + rgb[i][1]
//    dp[i][2] = min(dp[i - 1][0] , dp[i - 1][1]) + rgb[i][2]
//}
//print(min(dp[n][0], dp[n][1], dp[n][2]))


