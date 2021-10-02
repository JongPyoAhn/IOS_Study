//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/10/02.
//


//let k = Int(String(readLine()!))!
//for _ in 1...k {
//    let ve = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let v = ve[0]
//    let e = ve[1]
//    var visited: [Bool] = Array(repeating: false, count: v + 1)
//    var color = Array(repeating: false, count: v + 1)
//    var list: [[Int]] = Array(repeating: [], count: v + 1)
//    list[0].append(0)
//    var isColor = false
//    
//    for _ in 1...e{
//        let line = readLine()!.split(separator: " ").map{Int(String($0))!}
//        list[line[0]].append(line[1])
//        list[line[1]].append(line[0])
//    }
//    
//    func dfs(_ depth: Int) {
//    
//        for i in 0..<list[depth].count{
//            let node = list[depth][i]
//            if !visited[node]{
//                visited[node] = true
//                color[node] = !color[depth]
//                dfs(node)
//            }else {
//                if color[node] == color[depth]{
//                    isColor = true
//                    return
//                }
//                
//            }
//        }
//    }
//    
//    for i in 1..<list.count {
//        dfs(i)
//    }
//    
//    print(isColor ? "NO" : "YES")
//    
//}

