//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/25.
// 다시

//import Foundation
//let n = Int(String(readLine()!))!
//var arr = [[String]]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var result = [Int]()
//for _ in 0..<n{
//    let a = readLine()!.map{String($0)}
//    arr.append(a)
//}
//var tempArr = Array(repeating: Array(repeating: "A", count: n), count: n)
//for i in 0..<n{
//    for j in 0..<n{
//        if arr[i][j] == "R"{
//            tempArr[i][j] = "G"
//        }else{
//            tempArr[i][j] = arr[i][j]
//        }
//    }
//}
//
//var visited = Array(repeating: Array(repeating: false, count: 10001), count: 10001)
//var count = 0
//func bfs(_ x: Int, _ y: Int, _ array: [[String]]){
//    var queue = [((Int, Int), String)]() //x, y, ,구역 색상
//
//    queue.append(((x, y), array[x][y]))
//
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
////        print("x : \(pop.0.0) , ny : \(pop.0.1) , count : \(pop.1)")
//        for i in 0..<4{
//            let nx = pop.0.0 + dx[i]
//            let ny = pop.0.1 + dy[i]
//
//
//            if nx < 0 || nx >= n || ny < 0 || ny >= n || visited[nx][ny] {continue}
//            if array[nx][ny] != pop.1 {continue}
//            visited[nx][ny] = true
//            queue.append(((nx,ny), pop.1))
//        }
//
//    }
//
//}
//var firstResult = 0
//var secondResult = 0
//
//for i in 0..<n{
//    for j in 0..<n{
//        if !visited[i][j]{
//            bfs(i,j, arr)
//            firstResult += 1
//        }
//    }
//}
//visited = Array(repeating: Array(repeating: false, count: 10001), count: 10001)
//for i in 0..<n{
//    for j in 0..<n{
//        if !visited[i][j]{
//            bfs(i,j, tempArr)
//            secondResult += 1
//        }
//    }
//}
//print("\(firstResult) \(secondResult)")
