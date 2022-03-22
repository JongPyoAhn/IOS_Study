//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/12.
//

//import Foundation
//var money = 4578
//var costs = [1, 4, 99, 35, 50, 1000]
//print(solution(money, costs))
//func solution(_ money:Int, _ costs:[Int]) -> Int {
//    let arr = [1, 5, 10, 50, 100, 500]
//    var dp = Array(repeating: Int.max, count: money + 1)
//    dp[0] = 0
//    for i in 0..<6{
//        dp[arr[i]] = costs[i]
//    }
//    for i in 2...money{
//        for j in stride(from: 0, through: 5, by: 1){
//            if i % arr[j] == 0{
//                dp[i] = min(dp[i], dp[i - arr[j]] + costs[j])
//            }
//        }
//        
//    }
//    
//    return dp[money]
//}
//
