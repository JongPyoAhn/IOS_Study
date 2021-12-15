//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/15.
// O

//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//
//var arr = [[Int]]()
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//var dp = Array(repeating: Array(repeating: 0, count: 1001), count: 1001)
//dp[0][0] = arr[0][0]
//for r in 0..<n{
//    for c in 0..<m{
//        if r >= 0 && r < n && c + 1 < m {
//            dp[r][c + 1] = max(dp[r][c + 1], dp[r][c] + arr[r][c + 1])
//        }
//        if r + 1 < n {
//            if c >= 0{
//                dp[r + 1][c] = max(dp[r + 1][c], dp[r][c] + arr[r + 1][c])
//            }
//            if c + 1 >= 0 && c + 1 < m {
//                dp[r + 1][c + 1] = max(dp[r + 1][c + 1], dp[r][c] + arr[r + 1][c + 1])
//            }
//        }
//    }}
//print(dp[n - 1][m - 1])


