//
//  ㅡ먀ㅜ.swift
//  bruteForce
//
//  Created by 안종표 on 2021/10/25.
//

//import Foundation
//
//let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmk[0]
//let m = nmk[1]
//let k = nmk[2]
//
//var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
//var visited = Array(repeating: Array(repeating: false, count: m), count: n)
//
//let dx = [0, 0, -1, 1]
//let dy = [1, -1, 0, 0]
//
//var result = 0
//var sum = 0
//
//for i in 0..<n {
//    arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
//}
//
//
//func check(_ x: Int,_ y: Int) -> Bool {
//    for i in 0...3 {
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//        if nx >= 0 && nx < n && ny >= 0 && ny < m {
//            if visited[nx][ny] == true { //인접한 애들을 이미 들렸으면, 현재 있는곳에서는 들리면 안되니까
//                return false
//            }
//        }
//    }
//    return true
//}
//
//func dfs(_ depth : Int) {
//    if depth == k {
//        result = max(result, sum)
//        return
//    }
//    for i in 0..<n {
//        for j in 0..<m {
//            if !visited[i][j] && check(i, j) {
//                visited[i][j] = true
//                sum += arr[i][j]
//                dfs(depth + 1)
//                sum -= arr[i][j]
//                visited[i][j] = false
//            }
//        }
//    }
//}
//dfs(0)
//print(result)

