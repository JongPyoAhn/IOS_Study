//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/11/24.
//

//import Foundation
//let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmk[0]
//let m = nmk[1]
//let k = nmk[2]
//var arr = [[Int]]()
//let dx = [-1, 1, 0 ,0]
//let dy = [0, 0, -1, 1]
//var sum = 0
//var result = -10001
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//var location = [(Int, Int)]()
//var visited = Array(repeating: Array(repeating: false, count: m), count: n)
//
//func check(_ x: Int, _ y: Int) -> Bool{
//    for i in 0..<4{
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//
//        if nx < 0 || nx >= n || ny < 0 || ny >= m{ continue }
//        if visited[nx][ny] {
//            return false
//        }
//    }
//    return true
//}
//func dfs(_ depth: Int, _ startX: Int, _ startY: Int){
//    if depth == k{
//        result = max(result, sum)
//        return
//    }
//
//    for i in startX..<n{
//        for j in 0..<m{
//            if !visited[i][j] && check(i, j){
//
//                sum += arr[i][j]
//                visited[i][j] = true
//                location.append((i, j))
//                dfs(depth + 1, i, j)
//                sum -= arr[i][j]
//                location.removeLast()
//                visited[i][j] = false
//
//
//            }
//
//        }
//    }
//}
//dfs(0, 0, 0)
//print(result)
////3 3 4
////100 10 1
////1000 2 1
////10000 10 10000
