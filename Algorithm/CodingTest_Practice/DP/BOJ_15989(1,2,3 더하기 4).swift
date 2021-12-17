//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/17.
//

//import Foundation
//let t = Int(String(readLine()!))!
//var dp = Array(repeating: Array(repeating: 0, count: 3), count: 10001)
//dp[1][0] = 1
//dp[2][0] = 1
//dp[2][1] = 1
//dp[3][0] = 1
//dp[3][1] = 1
//dp[3][2] = 1
//for i in stride(from: 4, to: 10001, by: 1){
//    dp[i][0] = dp[i - 1][0]
//    dp[i][1] = dp[i - 2][0] + dp[i - 2][1]
//    dp[i][2] = dp[i - 3][0] + dp[i - 3][1] + dp[i - 3][2]
//}
//for _ in 0..<t{
//    let a = Int(String(readLine()!))!
//    print(dp[a][0] + dp[a][1] + dp[a][2])
//}
