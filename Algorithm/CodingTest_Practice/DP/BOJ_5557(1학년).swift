//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/21.
//

//let n = Int(String(readLine()!))!
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var dp = Array(repeating: Array(repeating: 0, count: 901), count: 101)
//dp[0][arr[0]] = 1
//
//for i in 1..<n{
//    for j in 0...20{
//        if dp[i - 1][j] > 0{
//            if j - arr[i] >= 0{
//                dp[i][j - arr[i]] += dp[i - 1][j]
//            }
//            if j + arr[i] <= 20 {
//                dp[i][j + arr[i]] += dp[i - 1][j]
//            }
//            
//           
//        }
//    }
//}
//print(dp[n - 2][arr[n - 1]])
