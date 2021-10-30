//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/10/28.
//

let n = Int(String(readLine()!))!
var t: [Int] = []
var p: [Int] = []
var dp = Array(repeating: 0, count: 16)

for i in 1...n {
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    t.append(arr[0])
    p.append(arr[1])
    dp[i] = p[i]
}

//1일에 일했을 때 보수

for i in stride(from: n, through: 1, by: -1) {
    if t[i] + i <= n + 1 {
        
    }
    
}
