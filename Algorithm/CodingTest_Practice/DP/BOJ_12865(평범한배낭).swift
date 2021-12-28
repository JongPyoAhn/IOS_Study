//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/28.
// 다시

//import Foundation
//let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//let k = nk[1]
//var dp = Array(repeating: Array(repeating: 0, count: 100001), count: 100001)
//var items = [[Int]]()
//var result = 0
//
//for _ in 0..<n{
//    let wv = readLine()!.split(separator: " ").map{Int(String($0))!}
//    items.append(wv)
//}
//
//for i in 1...n{
//    for j in 1...k{
//        if j >= items[i - 1][0] {
//            dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - items[i - 1][0]] + items[i - 1][1] )
//        }else{
//            dp[i][j] = dp[i - 1][j]
//        }
//    }
//}
//print(dp[n][k])

