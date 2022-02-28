//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/21.
//
//import Foundation
//let testCase = Int(String(readLine()!))!
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//for _ in 0..<testCase{
//    let hw = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let h = hw[0]
//    let w = hw[1]
//
//    var arr = [[String]]()
//    var crimeLoc = [(Int, Int)]()
//    for _ in 0..<h{
//        arr.append(readLine()!.map{String($0)})
//    }
//    var map = Array(repeating: Array(repeating: ".", count: w + 2), count: h + 2)
//    for i in 0..<h{
//        for j in 0..<w{
//            map[i + 1][j + 1] = arr[i][j]
//            if arr[i][j] == "$"{
//                crimeLoc.append((i + 1, j + 1))
//                map[i + 1][j + 1] = "."
//            }
//            
//        }
//    }
//    
//    func bfs(_ Loc: (Int, Int)) -> [[Int]]{
//        var queue = [(Int, Int)]()
//        var dist = Array(repeating: Array(repeating: -1, count: w + 2), count: h + 2)
//        queue.append((Loc))
////        print(Loc)
//        dist[Loc.0][Loc.1] = 0
//        while !queue.isEmpty{
//            let pop = queue.removeFirst()
//            let x = pop.0
//            let y = pop.1
//            for i in 0..<4{
//                let nx = x + dx[i]
//                let ny = y + dy[i]
//                if nx < 0 || nx >= h + 2 || ny < 0 || ny >= w + 2 || dist[nx][ny] >= 0{continue}
//                if map[nx][ny] == "*" {continue}
//                if map[nx][ny] == "#"{
////                    print("nx : \(nx) ny : \(ny)")
//                    dist[nx][ny] = dist[x][y] + 1
//                    queue.append((nx, ny))
//                }else if map[nx][ny] == "."{
//                    dist[nx][ny] = dist[x][y]
//                    queue.insert((nx, ny), at: 0)
//                }
//                
//            }
//        }
////        print(dist)
//        return dist
//    }
//    let d1 = bfs(crimeLoc[0])
//    let d2 = bfs(crimeLoc[1])
//    let d3 = bfs((0, 0))
//    var result = Int.max
//    for i in 0..<h + 2{
//        for j in 0..<w + 2{
//            if map[i][j] == "*"{continue}
//            if d1[i][j] != -1 && d2[i][j] != -1 && d3[i][j] != -1 {
//                var sum = d1[i][j] + d2[i][j] + d3[i][j]
//                if map[i][j] == "#"{ sum -= 2}
//                result = min(result, sum)
//            }
//            
//        }
//    }
//    print(result)
//
//}

