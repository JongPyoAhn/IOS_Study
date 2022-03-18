//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/18.
//

//import Foundation
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//while true{
//    let wh = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let w = wh[0]
//    let h = wh[1]
//    if w == 0 && h == 0{
//        break
//    }
//    var arr = [[String]]()
//    var location = [(Int, Int)]()
//    var k = 0
//    for i in 0..<h{
//        arr.append(readLine()!.map{String($0)})
//        for j in 0..<w{
//            if arr[i][j] == "*"{
//                k = k + 1
//                location.append((i, j))
//
//            }else if arr[i][j] == "o"{
//                location.insert((i, j), at: 0)
//            }
//        }
//    }
//
//    //MARK: FloodFill
//    var dist = Array(repeating: Array(repeating: -1, count: location.count), count: location.count)
//    func bfs(_ startX: Int, _ startY: Int) -> [[Int]]{
//        var visited = Array(repeating: Array(repeating: -1, count: w), count: h)
//        var queue = [(Int, Int)]()
//        queue.append((startX, startY))
//        visited[startX][startY] = 0
//        var idx = 0
//        while queue.count > idx{
//            let pop = queue[idx]
//            idx += 1
//            let x = pop.0
//            let y = pop.1
//
//
//            for i in 0..<4{
//                let nx = x + dx[i]
//                let ny = y + dy[i]
//
//                if nx < 0 || nx >= h || ny < 0 || ny >= w {continue}
//                if visited[nx][ny] != -1 || arr[nx][ny] == "x" {continue}
//                queue.append((nx, ny))
//                visited[nx][ny] = visited[x][y] + 1
//            }
//        }
//        return visited
//    }
//    var notContinue = false
//    for i in 0..<location.count{
//        let visit = bfs(location[i].0, location[i].1)
//        for j in 0..<location.count{
//            dist[i][j] = visit[location[j].0][location[j].1]
//            if dist[i][j] == -1{
//                notContinue = true
//            }
//        }
//    }
//    //MARK: Backtracking(permutation)
//    var dfsVisit = Array(repeating: false, count: location.count)
//    var result = Int.max
//    func dfs(_ depth: Int, _ sum: Int, _ curLocation: Int){
//        if depth == k{
//            result = min(result, sum)
//            return
//        }
//        for i in 1..<location.count{
//            if result < sum {continue} //가지치기 씹중요! 이거안하면 40%에서 시간초과걸린다.
//            if !dfsVisit[i]{
//                dfsVisit[i] = true
//                dfs(depth + 1, sum + dist[curLocation][i], i)
//                dfsVisit[i] = false
//            }
//        }
//
//    }
//    dfs(0, 0, 0)
//    if notContinue{
//        print(-1)
//    }else{
//        print(result)
//    }
//}
