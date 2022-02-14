//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/13.
//

//let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//let k = nk[1]
//
//var coin = [Int]()
//for _ in 0..<n{
//    coin.append(Int(String(readLine()!))!)
//}
//var dp = Array(repeating: 0, count: 10001)
//dp[0] = 1
//
//for i in 0..<n{
//    for j in coin[i]...k{
//        dp[j] += dp[j - coin[i]] % Int.max
//    }
//}
//
//print(dp[k] % Int.max)
