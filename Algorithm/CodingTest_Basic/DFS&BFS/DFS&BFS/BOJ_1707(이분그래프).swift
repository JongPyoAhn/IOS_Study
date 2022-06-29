//
//  main.swift
//  DFS&BFS
//
//  Created by 안종표 on 2021/10/02.
//


//let k = Int(String(readLine()!))!
//for _ in 0..<k{
//    let ve = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let v = ve[0]
//    let e = ve[1]
//    var graph = Array(repeating: [Int](), count: v + 1)
//    for _ in 0..<e{
//        let uv = readLine()!.split(separator: " ").map{Int(String($0))!}
//        let u = uv[0]
//        let v = uv[1]
//
//        graph[u].append(v)
//        graph[v].append(u)
//    }
//    var isSwitch = true
//    var visited = Array(repeating: -1, count: v + 1)
//    for i in 1...v{
//        if visited[i] == -1{
//            if !bfs(i, graph, v){
//                isSwitch = false
//            }
//        }
//
//    }
//    if isSwitch{
//        print("YES")
//    }else{
//        print("NO")
//    }
//    func bfs(_ v: Int, _ graph: [[Int]], _ cnt: Int) -> Bool{
//
//        var queue = [Int]()
//
//        visited[v] = 0
//        queue.append(v)
//        var idx = 0
//        while idx < queue.count{
//            let pop = queue[idx]
//            idx += 1
//
//            for i in graph[pop]{
//                if visited[i] == -1{ //방문한적이 없다면
//                    if visited[pop] == 0{
//                        visited[i] = 1
//                    }else{
//                        visited[i] = 0
//                    }
//                    queue.append(i)
//                }else{// 방문한적이 있다면
//                    if visited[i] == visited[pop]{
//                        return false
//                    }
//                }
//            }
//        }
//        return true
//    }
//}

