//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/11/01.
// O

//let mn = readLine()!.split(separator: " ").map{Int(String($0))!}
//let m = mn[0]
//let n = mn[1]
//var arr = [[Int]]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//var location = [(Int, Int)]()
//var visited = Array(repeating: Array(repeating: 0, count: m), count: n)
//var count = 0
//for i in 0..<n{
//    for j in 0..<m{
//        if arr[i][j] == 1{
//            location.append((i, j))
//            visited[i][j] = 1
//        }else if arr[i][j] == -1{
//            visited[i][j] = -1
//        }
//
//    }
//}
//bfs()
//var isNope = false
//for i in 0..<visited.count{
//    for j in 0..<visited[i].count{
//        if visited[i][j] == 0{
//            isNope = true
//        }
//    }
//}
//if isNope{
//    print("-1")
//}else{
//    print(count)
//}
//
//func bfs(){
//    var queue = [((Int, Int), Int)]()
//
//    for i in location{
//        visited[i.0][i.1] = 1
//        queue.append(((i.0, i.1), 0))
//    }
//    var idx = 0
//    while idx < queue.count{
//        let ((x, y), cnt) = queue[idx]
//        idx += 1
//        count = cnt
//        for i in 0...3{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//            let nCnt = cnt + 1
//            if nx < 0 || nx >= n || ny < 0 || ny >= m || visited[nx][ny] == -1 || visited[nx][ny] == 1 {continue}
//            queue.append(((nx, ny), nCnt))
//            visited[nx][ny] = 1
//        }
//    }
//
//}
