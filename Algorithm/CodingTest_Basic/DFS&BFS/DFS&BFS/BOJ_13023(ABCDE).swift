//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/09/25.
//


//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = arr[0]
//let m = arr[1]
//var depth = 0
//var available = false
//var visited = Array(repeating: false, count: n)
//var friendGraph: [[Int]] = Array(repeating: [], count: n)
//for _ in 0..<m {
//    let friend = readLine()!.split(separator: " ").map{Int(String($0))!}
//    friendGraph[friend[0]].append(friend[1])
//    friendGraph[friend[1]].append(friend[0])
//}
//
//func dfs(_ now: Int,_ depth: Int ) {
//    if depth == 4 {
//        available = true
//        return
//    }
//    visited[now] = true
//    for i in 0..<friendGraph[now].count {
//        let friend = friendGraph[now][i]
//        if !visited[friend] {
//            visited[friend] = true
//            dfs(friend,depth + 1)
//            visited[friend] = false
//        }
//    }
//    visited[now] = false
//}
//
//for i in 0..<n {
//    dfs(i, depth)
//    if available {
//        break
//    }
//}
//
//if available {
//    print("1")
//}else {
//    print("0")
//}

