//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/21.
//

//import Foundation
//let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//let k = nk[1]
//var dp = Array(repeating: 10001, count: 10001)
//var coin = [Int]()
//dp[0] = 0
//for i in 0..<n{
//    coin.append(Int(String(readLine()!))!)
//    for j in stride(from: coin[i], through: k, by: 1){
//        dp[j] = min(dp[j], dp[j - coin[i]] + 1)
//    }
//}
//if dp[k] == 10001{
//    print(-1)
//}else{
//    print(dp[k])
//}

//  1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
//1 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
//5 0 0 0 0 1 2 3 4 5 2  3  4  5  6  3
//120 0 0 0 0 0 0 0 0 0  0  1  2  3  4


