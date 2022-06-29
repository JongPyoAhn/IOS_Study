//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/10/08.
// O

//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = [[Int]]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//func bfs(){
//    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
//    var queue = [((Int, Int), Int)]()
//
//    visited[0][0] = true
//    queue.append(((0, 0), 1))
//
//    while !queue.isEmpty{
//        let ((x, y), cnt) = queue.removeFirst()
//        if x == n - 1 && y == m - 1 {
//            print(cnt)
//            break
//        }
//        for i in 0...3{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if nx < 0 || nx >= n || ny < 0 || ny >= m || visited[nx][ny] {continue}
//            if arr[nx][ny] == 0 {continue}
//            queue.append(((nx, ny), cnt + 1))
//            visited[nx][ny] = true
//        }
//
//    }
//}
//bfs()
