//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/03.
//
//
//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = [[Int]]()
//let dx = [0, -1, 0, 1]
//let dy = [-1, 0, 1, 0]
//var roomMaxSize = 0
//var roomCount = 0
//var visited = Array(repeating: Array(repeating: false, count: n), count: m)
//
//for _ in 0..<m{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//func bfs(_ startX: Int, _ startY: Int) -> Int{
//    var queue = [(Int, Int)]()
//    queue.append((startX, startY)) //x좌표, y좌표
//    visited[startX][startY] = true
//    var roomSize = 1
//
//    while !queue.isEmpty{
//
//        let pop = queue.removeFirst()
//        var wall = 1
//        let x = pop.0
//        let y = pop.1
//
//
//        for i in 0..<4{
//            if (arr[x][y] & wall) != wall{
//                let nx = x + dx[i]
//                let ny = y + dy[i]
//
//                if nx >= 0 && nx < m && ny >= 0 && ny < n && !visited[nx][ny]{
//                    queue.append((nx, ny))
//                    visited[nx][ny] = true
//                    roomSize += 1
//                }
//            }
//            wall = wall * 2
//        }
//        roomMaxSize = max(roomMaxSize, roomSize)
//    }
//    return roomMaxSize
//}
//for i in 0..<m{
//    for j in 0..<n{
//        if !visited[i][j]{
//
//            bfs(i, j)
//            roomCount += 1
//        }
//
//    }
//}
//print(roomCount)
//print(roomMaxSize)
//var biggerRoomMaxSize = 0
//
//for i in 0..<m{
//    for j in 0..<n{
//        var k = 1
//        while k <= 8{
//            if arr[i][j] & k == k{
//                visited = Array(repeating: Array(repeating: false, count: n), count: m)
//                arr[i][j] -= k
//                biggerRoomMaxSize = max(biggerRoomMaxSize, bfs(i, j))
//                arr[i][j] += k
//            }
//            k = k * 2
//        }
//    }
//}
//
//print(biggerRoomMaxSize)
