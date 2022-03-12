//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/12.
//
//https://velog.io/@emplam27/%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98-%EA%B7%B8%EB%A6%BC%EC%9C%BC%EB%A1%9C-%EC%95%8C%EC%95%84%EB%B3%B4%EB%8A%94-LCS-%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98-Longest-Common-Substring%EC%99%80-Longest-Common-Subsequence
//let x = readLine()!.map{String($0)}
//let y = readLine()!.map{String($0)}
//
//var dp = Array(repeating: Array(repeating: 0, count: y.count + 1), count: x.count + 1)
//var result = [String]()
//var cnt = 1
//for i in 1...x.count{
//    for j in 1...y.count{
//        if x[i - 1] == y[j - 1]{
//            dp[i][j] = dp[i - 1][j - 1] + 1
//        }else{
//            dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
//        }
//    }
//}
//print(dp[x.count][y.count])
//var n = x.count
//var m = y.count
//while n != 0 && m != 0 {
//    if x[n - 1] == y[m - 1]{
//        result.append(x[n - 1])
//        n -= 1
//        m -= 1
//    }else if dp[n][m] == dp[n - 1][m]{
//        n -= 1
//    }else if dp[n][m] == dp[n][m - 1]{
//        m -= 1'
//    }
//}
//print(result.reversed().joined(separator: ""))
