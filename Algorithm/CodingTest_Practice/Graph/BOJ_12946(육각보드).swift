//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/02.
//



//import Foundation
//let n = Int(String(readLine()!))!
//var arr = [[String]]()
//let dx = [-1, -1, 0, 1, 1, 0]
//let dy = [0, 1, 1, 0, -1, -1]
//for _ in 0..<n{
//    arr.append(readLine()!.map{String($0)})
//}
//var color = Array(repeating: Array(repeating: -1, count: n), count: n)
//var result = 0
//for i in 0..<n{
//    for j in 0..<n{
//        if arr[i][j] == "X" && color[i][j] == -1{
//            dfs(i, j, 0)
//        }
//
//    }
//}
//print(result)
//
//func dfs(_ x: Int, _ y: Int, _ c: Int){
//    color[x][y] = c
//    result = max(result, 1)
//    for i in 0..<6{
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//
//        if nx < 0 || nx >= n || ny < 0 || ny >= n {continue}
//        if arr[nx][ny] == "X" {
//            if color[nx][ny] == -1{
//                dfs(nx, ny, 1 - c)
//                result = max(result, 2)
//            }else if color[nx][ny] == c{
//                result = max(result, 3)
//                print(result)
//                exit(0)
//            }
//        }
//    }
//
//}
//
