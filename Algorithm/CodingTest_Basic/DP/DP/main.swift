//
//  main.swift
//  DP
//
//  Created by 안종표 on 2021/11/29.
//

import Foundation

let n = Int(String(readLine()!))!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var upDP = Array(repeating: 1, count: 1001)
var downDP = Array(repeating: 1, count: 1001)
var result: [Int] = []

    for i in stride(from: 2, through: n, by: 1){
        for j in 1..<i{
            if arr[i - 1] > arr[j - 1]{
                upDP[i] = max(upDP[i], upDP[j] + 1)
            }
        }
    }
    for i in stride(from: n, through: 1, by: -1){
        for j in stride(from: n, through: i, by: -1){
            if arr[i - 1] > arr[j - 1]{
                downDP[i] = max(downDP[i], downDP[j] + 1)
            }
        }
    }
    for i in 1...n{
        result.append(upDP[i] + downDP[i])
    }
    print(result.max()! - 1)

