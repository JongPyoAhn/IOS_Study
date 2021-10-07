//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/10/05.
//


//let n = Int(String(readLine()!))!
//var arr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//var dp: [Int] = Array(repeating: 1, count: 1001)
//var result: [Int] = []
//
//for i in 1..<n {
//    for j in 0..<i{
//        if arr[i] > arr[j]{
//            dp[i] = max(dp[i], dp[j] + 1)
//        }
//    }
//}
//
//print(dp.max()!)
//
//var order = dp.max()!
//for i in stride(from: n - 1, through: 0, by: -1){
//    if dp[i] == order{
//        result.append(arr[i])
//        order -= 1
//    }
//    
//}
//result.reverse()
//print(result.map{String($0)}.joined(separator: " "))

