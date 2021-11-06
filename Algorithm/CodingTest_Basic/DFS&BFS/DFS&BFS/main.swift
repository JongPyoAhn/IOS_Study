//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/11/01.
//


let n = Int(String(readLine()!))!
var arr: [[Int]] = [[]]
let dx = [0, 0, -1, 1]
let dy = [1, -1, 0, 0]
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
var result: [Int] = []
var count = 0
for _ in 0..<n{
    arr.append(readLine()!.map{Int(String($0))!})
}
arr.removeFirst()

func dfs(_ x: Int, _ y: Int){
    count += 1
    visited[x][y] = true
    for i in 0...3{
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < n {
            if !visited[nx][ny] && arr[nx][ny] == 1{
                
                dfs(nx, ny)
            }
        }
    }
    
}



for i in 0..<n {
    for j in 0..<n {
        if !visited[i][j] && arr[i][j] == 1 {
            count = 0
            dfs(i,j)
            result.append(count)
        }
    }
}

print(result.count)
result.sort()
print(result.map{String($0)}.joined(separator: "\n"))
