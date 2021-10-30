//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/10/07.
// 다시풀기

//let n = Int(String(readLine()!))!
//
//var dp: [Int] = Array(repeating: 0,count: 100001)
//
//for i in stride(from: 1,through: n,by: 1){
//        dp[i] = i //1의 제곱으로만 이루어진 경우(최대값)
//        for j in stride(from: 1, through: i, by: 1) {
//            if j * j > i {
//                break
//            }
//            dp[i] = min(dp[i], dp[i - j * j] + 1)
//    }
//}
//print(dp[n])
