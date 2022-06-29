//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/10/05.
// O

//let n = Int(String(readLine()!))!
//var arr: [[Int]] = [[]]
//var visited = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
//let dx = [0, 0, 1, -1]
//let dy = [1, -1, 0, 0]
//var count = 0
//for _ in 1...n {
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//arr.removeFirst()
//func dfs(_ x: Int,_ y: Int){
//    count += 1
//    visited[x][y] = true
//    for i in 0...3{
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//        if nx >= 0 && nx < n && ny >= 0 && ny < n {
//            if arr[nx][ny] == 1 && !visited[nx][ny] {
//                dfs(nx, ny)
//            }
//        }
//        
//    }
//}
//var result: [Int] = []
//for i in 0..<n {
//    for j in 0..<n{
//        if arr[i][j] == 1 && !visited[i][j] {
//            count = 0
//            dfs(i, j)
//            result.append(count)
//        }
//    }
//}
//print(result.count)
//result.sort()
//print(result.map{String($0)}.joined(separator: "\n"))

//MARK: -- BFS
//let n = Int(String(readLine()!))!
//var arr = [[Int]]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//var visited = Array(repeating: Array(repeating: 0, count: n), count: n)
//var count = 0
//var resultArr = [Int]()
//for i in 0..<n{
//    for j in 0..<n{
//        if visited[i][j] == 0 && arr[i][j] == 1{
//            count += 1
//            resultArr.append(bfs(i, j, count))
//        }
//    }
//}
//func bfs(_ i: Int, _ j: Int, _ cnt: Int) -> Int{
//    var queue = [(Int, Int)]()
//    visited[i][j] = cnt
//    queue.append((i, j))
//    var idx = 0
//    while idx < queue.count{
//        let (x, y) = queue[idx]
//        idx += 1
//        for k in 0..<4{
//            let nx = x + dx[k]
//            let ny = y + dy[k]
//
//            if nx < 0 || nx >= n || ny < 0 || ny >= n || visited[nx][ny] != 0 {continue}
//            if arr[nx][ny] == 0{continue}
//            visited[nx][ny] = cnt
//            queue.append((nx, ny))
//        }
//    }
//    return idx
//}
//print(count)
//resultArr.sort()
//print(resultArr.map{String($0)}.joined(separator: "\n"))
//
//
//
