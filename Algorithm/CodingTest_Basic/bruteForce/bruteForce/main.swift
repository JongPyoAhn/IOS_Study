//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/11/24.
//

import Foundation

let n = Int(String(readLine()!))!
var arr = [[Int]]()
for _ in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
var cost = 0
var visited = Array(repeating: false, count: 11)
var minCost = Int.max
func dfs(_ depth: Int, _ now: Int, _ start: Int){
    if depth == n && now == start{
        minCost = min(minCost, cost)
        return
    }
    for i in 0..<n{
        if !visited[i] && arr[now][i] != 0 {
            visited[i] = true
            cost += arr[now][i]
            if cost <= minCost{
                dfs(depth + 1, i, start)
            }
            cost -= arr[now][i]
            visited[i] = false
        }
    }
}
dfs(0, 0, 0)
print(minCost)
