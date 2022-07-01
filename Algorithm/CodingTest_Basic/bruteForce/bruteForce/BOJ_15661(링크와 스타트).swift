//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/11/05.
// 다시

//import Foundation
//let n = Int(String(readLine()!))!
//var arr = [[Int]]()
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//var visited = Array(repeating: false, count: 21)
//var ans = Int.max
//for team in 1...n/2{
//    dfs(0, 0, team)
//}
//func dfs(_ depth: Int, _ start: Int, _ team: Int){
//    if depth == team{
//        var startTeam = 0
//        var linkTeam = 0
//        for i in 0..<n{
//            for j in 0..<n{
//                if !visited[i] && !visited[j]{
//                    startTeam += arr[i][j]
//                }
//                if visited[i] && visited[j]{
//                    linkTeam += arr[i][j]
//                }
//            }
//        }
//        ans = min(ans, abs(startTeam - linkTeam))
//        if ans == 0 {
//            print(ans)
//            exit(0)
//        }
//        return
//    }
//
//    for i in start..<n{
//        if !visited[i]{
//            visited[i] = true
//            dfs(depth + 1, i + 1, team)
//            visited[i] = false
//        }
//
//    }
//}
//
//print(ans)

