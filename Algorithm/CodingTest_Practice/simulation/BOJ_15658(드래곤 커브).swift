//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/04/25.
//

//import Foundation

//var n = Int(String(readLine()!))!//드래곤커브개수
//var arr = [[Int]]()
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//var visited = Array(repeating: Array(repeating: false, count: 101), count: 101)
//let dx = [0, -1, 0, 1]
//let dy = [1, 0, -1, 0]
//var result = 0
//
//for i in arr{
//    let x = i[1]
//    let y = i[0]
//    let d = i[2] //방향
//    let g = i[3] //세대
//    visited[x][y] = true //처음좌표
//    var nx = x + dx[d]
//    var ny = y + dy[d]
//    visited[nx][ny] = true
//    var stack = [Int]()
//    stack.append(d)
//    for _ in stride(from: 1, through: g, by: 1){
//
//        for j in stride(from: stack.count - 1, through: 0, by: -1){
//            var k = stack[j] + 1
//            if k == 4{ k = 0 }
//            nx = nx + dx[k]
//            ny = ny + dy[k]
//            visited[nx][ny] = true
//            stack.append(k)
//        }
//    }
//}
//for i in 0...100{
//    for j in 0...100{
//        if visited[i][j]{
//            if i + 1 > 100 || j + 1 > 100{
//                continue
//            }
//            if visited[i][j] && visited[i + 1][j] && visited[i][j + 1] && visited[i + 1][j + 1]{
//                result += 1
//            }
//        }
//    }
//
//}
//
//print(result)
