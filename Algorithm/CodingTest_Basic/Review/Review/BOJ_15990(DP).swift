//
//  main.swift
//  Review
//
//  Created by 안종표 on 2021/09/06.
// X

let T = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 4), count: 100001)
dp[1][1] = 1
dp[2][2] = 1
dp[3][1] = 1
dp[3][2] = 1
dp[3][3] = 1

for i in stride(from: 4, to: dp.count, by: 1){
    dp[i][1] = (dp[i - 1][2] + dp[i - 1][3]) % 1000000009
    dp[i][2] = (dp[i - 2][1] + dp[i - 2][3]) % 1000000009
    dp[i][3] = (dp[i - 3][2] + dp[i - 3][1]) % 1000000009
}


for _ in 1...T {
    let n = Int(readLine()!)!
    print("\((dp[n][1] + dp[n][2] + dp[n][3]) % 1000000009 )")
}
