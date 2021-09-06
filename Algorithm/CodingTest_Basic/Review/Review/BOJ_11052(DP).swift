//
//  main.swift
//  Review
//
//  Created by 안종표 on 2021/09/05.
// X

//let n = Int(readLine()!)!
//let arr = readLine()!.split(separator: " ").map{Int($0)!}
//var dp = Array(repeating: 0, count: 1001)
//for i in 0..<n{
//    dp[i + 1] = arr[i]
//}
//dp[2] = dp[1] * 2 > arr[1] ? dp[1] * 2 : arr[1]
//for i in stride(from: 3, through: n, by: 1){
//    for j in 1...(i - 1) {
//        dp[i] = dp[j] + dp[i - j] > dp[i] ? dp[j] + dp[i - j] : dp[i]
//    }
//}
//print("\(dp[n])")
