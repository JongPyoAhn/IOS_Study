//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/14.
//

//import Foundation
//let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmk[0]
//let m = nmk[1]
//let k = nmk[2]
//
//var arr = [[Int]]()
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var result = Int.max
//func bfs(){
//    var queue = [((Int, Int), Int, Int)]() //좌표, 이동횟수, 벽부순개수
//    var visited = Array(repeating: Array(repeating: Int.max, count: m), count: n)
//
//    queue.append(((0,0), 1, 0))
//    visited[0][0] = 0
//    var idx = 0
//    while queue.count > idx{
//        let pop = queue[idx]
//        idx += 1
//
//        let x = pop.0.0
//        let y = pop.0.1
//        let crushed = pop.2
////        print("x : \(x) y : \(y) crushed : \(crushed)")
//        if pop.0.0 == n - 1 && pop.0.1 == m - 1{
//            result = min(result, pop.1)
//        }
//
//        for i in 0..<4{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if nx < 0 || nx >= n || ny < 0 || ny >= m {continue}
//            //if visited[nx][ny] <= crushed {continue} 이 조건에서 자기자신으로 갈 때 무조건 작거나같아서 걸려버림.
//            //그래서 자기자신일떄는 작거나같아도 넣어준다.
//            //문제가생겼다. 자기자신일떄를 넣어주면 큐에 끝없이 자기자신을 넣어준다.
//            //자기자신일떄를 큐에 넣지말고 밤에 벽을 들르는 경우에만 자기자신을 넣어주자.
//            if visited[nx][ny] <= crushed {continue}
//
//            if arr[nx][ny] == 1 && pop.1 % 2 != 0{
//                if crushed < k{
//                    queue.append(((nx, ny), pop.1 + 1, crushed + 1))
//                    visited[nx][ny] = crushed + 1
//                }
//
//            }else if arr[nx][ny] == 1 && pop.1 % 2 == 0{ //다음에 방문해야하는 곳이 벽이고 현재 밤일떄
//                queue.append(((x, y), pop.1 + 1, crushed))
//            }else if arr[nx][ny] == 0{
//                queue.append(((nx, ny), pop.1 + 1, crushed))
//                visited[nx][ny] = crushed
//            }
//         }
//    }
//
//}
//
//bfs()
//if result == Int.max{
//    print(-1)
//}else{
//    print(result)
//}


