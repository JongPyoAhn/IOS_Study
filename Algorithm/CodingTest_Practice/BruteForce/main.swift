//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/12.
// 다시

import Foundation
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var arr = [[Int]]()
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]
var visited = Array(repeating: Array(repeating: false, count: 501), count: 501)
var result = 0
for _ in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func dfs(_ depth: Int, _ x: Int, _ y: Int, _ sum: Int){//ㅗ을 제외하고
    if depth == 4{
        
        result = max(result, sum)
        return
    }
    for i in 0..<4{
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny]{
            visited[nx][ny] = true
            dfs(depth + 1, nx, ny, sum + arr[nx][ny])
            visited[nx][ny] = false
        }
        
    }
}

func exceptCheck(_ x: Int, _ y: Int){
    if x + 1 < n && y + 2 < m{
        result = max(result, arr[x][y] + arr[x][y + 1] + arr[x][y + 2] + arr[x + 1][y + 1])
    }
    if x + 2 < n && y + 1 < m{
        result = max(result, arr[x][y] + arr[x + 1][y] + arr[x + 1][y + 1] + arr[x + 2][y])
    }
    if x + 1 < n && x - 1 >= 0 && y + 1 < m{
        result = max(result, arr[x][y] + arr[x][y + 1] + arr[x - 1][y + 1] + arr[x + 1][y + 1])
    }
    
    if x + 1 < n && y - 1 >= 0 && y + 1 < m{
        result = max(result, arr[x][y] + arr[x + 1][y - 1] + arr[x + 1][y] + arr[x + 1][y + 1])
    }
}

for i in 0..<n{
    for j in 0..<m{
        dfs(0, i, j, 0)
        exceptCheck(i, j)
    }
}

print(result)
