//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/22.
//
//import Foundation
//var arr = [[String]]()
//for _ in 0..<8{
//    arr.append(readLine()!.map{String($0)})
//}
////가장 왼쪽아래칸 7,0
////인접한 한칸,대각선 인접한 한칸 가능
////
//let dx = [-1, 1, 0, 0, 1, 1, -1, -1, 0]
//let dy = [0, 0, -1, 1, 1, -1, 1, -1, 0]
//var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 8), count: 8), count: 9)
//var queue = [(Int, Int, Int)]()
//queue.append((0, 7, 0))
//visited[0][7][0] = true
//var result = false
//
//while !queue.isEmpty{
//    let (t,x,y) = queue.removeFirst()
//    if x == 0 && y == 7 {result = true}
//    for i in 0..<9{
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//        let nt = min(t + 1, 8)
//
//        if nx < 0 || nx >= 8 || ny < 0 || ny >= 8 {continue}
//        if nx - t >= 0 && arr[nx - t][ny] == "#" {continue}
//        if nx - t - 1 >= 0 && arr[nx - t - 1][ny] == "#" {continue}
//        if !visited[nt][nx][ny]{
//            visited[nt][nx][ny] = true
//            queue.append((nt, nx, ny))
//        }
//    }
//}
//if result{
//    print (1)
//}else{
//    print(0)
//}

