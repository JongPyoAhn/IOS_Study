//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/08/30.
// O

//
//let n = Int(String(readLine()!))!
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var dp: [Int] = Array(repeating: 0, count: 1001)
//for i in 1...n{
//    dp[i] = arr[i - 1]
//}
//for i in stride(from: 2, through: n, by: 1){
//    for j in 1...i/2{
//        dp[i] = max(dp[i], dp[i - j] + dp[j])
//    }
//}
//print(dp[n])
