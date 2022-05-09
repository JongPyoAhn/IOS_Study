//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/05/03.
// O

//import Foundation
//let dx = [1, 0, -1, 0]
//let dy = [0, 1, 0, -1]
//
//func manhatan(_ r1: Int, _ c1: Int, _ r2: Int, _ c2: Int) -> Bool{
//    if abs(r1 - r2) + abs(c1 - c2) <= 2{
//        return false
//    }else{
//        return true
//    }
//}
//
//func bfs(_ x: Int, _ y: Int, _ arr: [[Character]]) -> Bool{
//    var queue = [(Int, Int)]()//좌표, 거리
//    var visited = Array(repeating: Array(repeating: false, count: 5), count: 5)
//    queue.append((x, y))
//    visited[x][y] = true
//    
//    while !queue.isEmpty{
//        let (curX, curY) = queue.removeFirst()
//        for i in 0..<4{
//            let nx = curX + dx[i]
//            let ny = curY + dy[i]
//            
//            if nx < 0 || nx >= 5 || ny < 0 || ny >= 5 || visited[nx][ny]{continue}
//            if arr[nx][ny] == "X"{
//                if nx + dx[i] >= 0 && nx + dx[i] < 5 && ny + dy[i] >= 0 && ny + dy[i] < 5{
//                    visited[nx + dx[i]][ny + dy[i]] = true
//                }
//                continue}
//            if arr[nx][ny] == "P"{
//                if !manhatan(x, y, nx, ny) {//맨하탄거리2이하일때
//                   return false
//                }
//            }
//            queue.append((nx, ny))
//            visited[nx][ny] = true
//        }
//        
//    }
//    return true
//}
//
//func solution(_ places:[[String]]) -> [Int] {
//    var result = [Int]()
//    var count = 0
//    for i in places{
//        count += 1
//        var arr = [[Character]]()
//        for j in i{
//            arr.append(Array(j))
//        }
//        var isCorrect = true
//        for i in 0..<arr.count{
//            for j in 0..<arr.count{
//                if arr[i][j] == "P"{
//                    isCorrect = bfs(i, j, arr)
//                    if !isCorrect{
//                        break
//                    }
//                }
//            }
//            if !isCorrect{
//                break
//            }
//        }
//        if isCorrect{
//            result.append(1)
//        }else{
//            result.append(0)
//        }
//    }
//    return result
//}
//print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))
