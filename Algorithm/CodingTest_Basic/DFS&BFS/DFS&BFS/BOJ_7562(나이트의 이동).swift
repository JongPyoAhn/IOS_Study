//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/11/11.
// O

//let t = Int(String(readLine()!))!
//let dx = [-1, -2, -2, -1, 1, 2, 2, 1]
//let dy = [-2, -1, 1, 2, -2, -1, 1, 2]
//for _ in 0..<t{
//    let l = Int(String(readLine()!))!
//    let curLocation = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let targetLocation = readLine()!.split(separator: " ").map{Int(String($0))!}
//    bfs()
//    func bfs(){
//        var visited = Array(repeating: Array(repeating: false, count: l), count: l)
//
//        var queue = [((Int, Int), Int)]()
//
//        visited[curLocation[0]][curLocation[1]] = true
//        queue.append(((curLocation[0], curLocation[1]), 0))
//        var idx = 0
//        while idx < queue.count{
//            let ((x, y), cnt) = queue[idx]
//
//            if x == targetLocation[0] && y == targetLocation[1]{
//                print(cnt)
//                break
//            }
//            idx += 1
//
//            for i in 0...7{
//                let nx = x + dx[i]
//                let ny = y + dy[i]
//
//                if nx < 0 || nx >= l || ny < 0 || ny >= l || visited[nx][ny] {continue}
//                visited[nx][ny] = true
//                queue.append(((nx, ny), cnt + 1))
//            }
//
//        }
//
//    }
//}

