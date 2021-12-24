//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/24.
// 멘탈깨져서 못풀겠음.

import Foundation
let t = Int(String(readLine()!))!
var dp = Array(repeating: Array(repeating: 0, count: 501), count: 501)

for _ in 0..<t{
    let k = Int(String(readLine()!))!
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    
//    for j in 1..<k{
//        for i in stride(from: j - 1, to: -1, by: -1){
//            var resultMin = Int.max
//            for v in 0..<j-i{
//                resultMin = min(resultMin, dp[i][i + v] + dp[i + v + 1][j])
//            }
//            var temp = 0
//            for v in arr[i..<j+1]{
//                temp += v
//            }
//            dp[i][j] = resultMin + temp
//        }
//    }
    for j in 1..<k{
        for i in stride(from: j - 1, to: -1, by: -1){
            var resultMin = Int.max
            for v in 0..<j-i{
                 
            }
        }
    }
    
    print(dp[0][k - 1])
}
