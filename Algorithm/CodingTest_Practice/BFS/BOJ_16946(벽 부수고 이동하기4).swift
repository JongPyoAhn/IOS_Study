//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/03.
// 다시

//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//
//var arr = [[Int]]()
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//
//var groupArr = Array(repeating: Array(repeating: 0, count: m), count: n)
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var insuvisited = Array(repeating: Array(repeating: false, count: m), count: n)
//func bfs(_ startX: Int, _ startY: Int, _ cnt: Int, _ insuvisited: [[Bool]]) -> Int{
//    var count = 0
//    var queue = [(Int, Int)]()
//    var visited = insuvisited
//    queue.append((startX, startY))
//    count += 1
//    visited[startX][startY] = true
//    groupArr[startX][startY] = cnt
//
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        let x = pop.0
//        let y = pop.1
//
//        for i in 0..<4{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if nx < 0 || nx >= n || ny < 0 || ny >= m || visited[nx][ny] {continue}
//            if arr[nx][ny] == 1 {continue}
//            queue.append((nx, ny))
//            visited[nx][ny] = true
//            groupArr[nx][ny] = cnt
//            count += 1
//        }
//    }
//
//
//    return count
//}
//
//
//var cnt = 0
//var lengthArr = Array(repeating: 0, count: n * m + 1)
//for i in 0..<n{
//    for j in 0..<m{
//        if arr[i][j] == 0{
//            if groupArr[i][j] == 0 {
//                cnt += 1
//                lengthArr[cnt] = bfs(i, j, cnt, insuvisited)
//            }
//
//        }
//    }
//}
//
//var resultArr = Array(repeating: Array(repeating: "0", count: m), count: n)
//for i in 0..<n{
//    for j in 0..<m{
//        if arr[i][j] == 1{
//            var around = Set<Int>()
//            for k in 0..<4{
//                let nx = i + dx[k]
//                let ny = j + dy[k]
//
//                if nx < 0 || nx >= n || ny < 0 || ny >= m || around.contains(groupArr[nx][ny]) {continue}
//                around.insert(groupArr[nx][ny])
//            }
//            var sum = 1
//            for v in around{
//                sum += Int(resultArr[i][j])! + lengthArr[v]
//
//            }
//            resultArr[i][j] = String(sum % 10)
//        }
//    }
//}
//for i in resultArr{
//    print(i.joined(separator: ""))
//}
