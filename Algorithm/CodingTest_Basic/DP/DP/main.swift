//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/11/29.
//

import Foundation

let n = Int(String(readLine()!))!
var tp: [[Int]] = [[]]
var dp: [Int] = Array(repeating: 0, count: 21)
for i in 1...n{
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    tp.append(arr)
    dp[i] = arr[1]
}

for i in stride(from: n, through: 1, by: -1){
    if i + tp[i][0] <= n + 1{
            dp[i] = max(dp[i + 1], dp[i + tp[i][0]] + tp[i][1])
    }else {
        dp[i] = dp[i + 1]
    }
}

print(dp.max()!)
