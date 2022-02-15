//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/14.
//


//let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmk[0]
//let m = nmk[1]
//let k = nmk[2]
//
//var impossible = true
//var arr = [[Int]]()
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//
//func bfs(){
//    let dx = [-1, 1, 0, 0]
//    let dy = [0, 0, -1, 1]
//    var queue = [((Int, Int), Int, Int)]()//x좌표, y좌표, 이동횟수, 부순벽의개수
//    var visited = Array(repeating: Array(repeating: Array(repeating: false, count: k + 2), count: m), count: n)
//    queue.append(((0, 0), 1, k))
//    visited[0][0][k] = true
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        let x = pop.0.0
//        let y = pop.0.1
//        let moveCnt = pop.1
//        let wall = pop.2
//
//        if x == n - 1 && y == m - 1{
//            print(moveCnt)
//            impossible = false
//            break
//        }
//
//        for i in 0..<4{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if nx < 0 || nx >= n || ny < 0 || ny >= m {continue}
//            if visited[nx][ny][wall + 1]{continue}
//            if arr[nx][ny] == 1 && wall > 0 && !visited[nx][ny][wall - 1]{
//                queue.append(((nx, ny), moveCnt + 1, wall - 1))
//                visited[nx][ny][wall - 1] = true
//            }
//            if arr[nx][ny] == 0 && !visited[nx][ny][wall]{
//                queue.append(((nx, ny), moveCnt + 1, wall))
//                visited[nx][ny][wall] = true
//            }
//
//        }
//
//    }
//
//}
//bfs()
//if impossible{
//    print(-1)
//}
