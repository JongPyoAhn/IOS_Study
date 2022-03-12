//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/11.
// 부순벽의 개수 큐에 안넣고 visited[x][y]로 하려고하면 시간초과남. why? 내생각엔 배열에서 불러오는게 더 오래걸리는거같음!
//

//let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmk[0]
//let m = nmk[1]
//let k = nmk[2]
//var arr = [[Int]]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//
//var result = Int.max
//func bfs(){
//    var queue = [((Int, Int), Int, Int)]()//x, y, 지나온 칸의 개수, 부순 벽의 개수
//    var visited = Array(repeating: Array(repeating: Int.max, count: m), count: n )
//    
//    queue.append(((0, 0), 1, 0))
//    visited[0][0] = 0
//    var idx = 0
//    while queue.count > idx{
//        let pop = queue[idx]
//        idx += 1
//        let x = pop.0.0
//        let y = pop.0.1
//        
//        if x == n - 1 && y == m - 1{
//            result = min(result, pop.1)
//        }
//
//        for i in 0..<4{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//            
//            if nx < 0 || nx >= n || ny < 0 || ny >= m || visited[nx][ny] <= pop.2 {continue}
//            if arr[nx][ny] == 1{
//                if pop.2 < k && visited[nx][ny] > pop.2 + 1{
//                    queue.append(((nx, ny), pop.1 + 1, pop.2 + 1))
//                    visited[nx][ny] = pop.2 + 1
//                }
//            }else{
//                queue.append(((nx, ny), pop.1 + 1, pop.2))
//                visited[nx][ny] = pop.2
//            }
//            
//
//        }
//    }
//    
//}
//bfs()
//if result == Int.max {
//    print(-1)
//}else{
//    print(result)
//}
