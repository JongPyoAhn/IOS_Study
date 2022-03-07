//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/03/07.
//

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]

var arr = [[Int]]()
for _ in 0..<n{
    arr.append(readLine()!.map{Int(String($0))!})
}

var groupArr = Array(repeating: Array(repeating: -1, count: m), count: n)
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]
func bfs(_ startX: Int, _ startY: Int, _ cnt: Int) -> Int{
    var count = 0
    var queue = [(Int, Int)]()
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    queue.append((startX, startY))
    visited[startX][startY] = true
    
    while !queue.isEmpty{
        let pop = queue.removeFirst()
        let x = pop.0
        let y = pop.1
        
        for i in 0..<4{
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < 0 || nx >= n || ny < 0 || ny >= m || visited[nx][ny] {continue}
            queue.append((nx, ny))
            visited[nx][ny] = true
            groupArr[nx][ny] = cnt
            count += 1
        }
    }
    
    
    return count
}


var cnt = -1
var lengthArr = Array(repeating: 0, count: n * m + 1)
for i in 0..<n{
    for j in 0..<m{
        if arr[i][j] == 0{
            if groupArr[i][j] == -1 {
                cnt += 1
            }
            lengthArr[cnt] = bfs(i, j, cnt)
        }
    }
}
