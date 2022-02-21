//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/16.
//

//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//
//while true{
//    let wh = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let w = wh[0]
//    let h = wh[1]
//    if w == 0 && h == 0 {
//        break
//    }
//    var arr = [[String]]()
//    var Location = [(Int, Int)]()
//    var robot = (0, 0)
//    var dirtyCount = 0
//    for i in 0..<h{
//        arr.append(readLine()!.map{String($0)})
//        for j in 0..<w{
//            if arr[i][j] == "o"{
//                robot = (i, j)
//            }
//            if arr[i][j] == "*"{
//                dirtyCount += 1
//                Location.append((i, j))
//            }
//        }
//    }
//    Location.insert(robot, at: 0)
//
//
//    var dist = Array(repeating: Array(repeating: 0, count: w), count: h)
//
//    var result = Int.max
//    var dfsVisited = Array(repeating: false, count: Location.count)
//    var resultArr = Array(repeating: Array(repeating: 0, count: Location.count), count: Location.count)
//    for i in 0..<Location.count{
//        bfs(Location[i])
//        if result == -1 {
//            break
//        }
//        for j in 0..<Location.count{
//            resultArr[i][j] = dist[Location[j].0][Location[j].1]
//            resultArr[j][i] = dist[Location[j].0][Location[j].1]
//        }
//
//    }
//
//    var sum = 0
//    dfsVisited[0] = true
//    if result != -1{
//        dfs(0, 0)
//    }
//    print(result)
//
//    func dfs(_ depth: Int, _ start: Int){
//        if depth == Location.count - 1{
//            result = min(result, sum)
//            return
//        }
//
//        for i in 0..<Location.count{
//            if dfsVisited[i] {continue}
//            if resultArr[start][i] == 0 {continue}
//            dfsVisited[i] = true
//            sum += resultArr[start][i]
//            dfs(depth + 1, i)
//            sum -= resultArr[start][i]
//            dfsVisited[i] = false
//        }
//    }
//
//    func bfs(_ location: (Int, Int)){
//        var cnt = 0
//        dist = Array(repeating: Array(repeating: 0, count: w), count: h)
//        var queue = [((Int, Int), Int)]() //x, y, 이동거리
//        var visited = Array(repeating: Array(repeating: false, count: w), count: h)
//        queue.append(((location), 0))
//        visited[location.0][location.1] = true
//        var idx = 0
//
//        while queue.count > idx {
//            let pop = queue[idx]
//            idx += 1
//            let x = pop.0.0
//            let y = pop.0.1
//
//            if arr[x][y] == "*"{
//                cnt += 1
//            }
//
//            for i in 0..<4{
//                let nx = x + dx[i]
//                let ny = y + dy[i]
//
//                if nx < 0 || nx >= h || ny < 0 || ny >= w || visited[nx][ny] {continue}
//                if arr[nx][ny] == "x" {continue}
//
//                queue.append(((nx, ny), pop.1 + 1))
//                visited[nx][ny] = true
//                dist[nx][ny] = dist[x][y] + 1
//
//            }
//
//        }
//        if location == Location[0]{
//            if dirtyCount != cnt{
//                result = -1
//            }
//        }
//    }
//}
