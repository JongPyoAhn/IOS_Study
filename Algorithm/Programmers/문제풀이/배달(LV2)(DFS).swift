//
//  main.swift
//  ProgrammersInternShip
//
//  Created by 안종표 on 2021/11/06.
// 32번케이스 통과x시간초과

//import Foundation
//func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
//    var visited = Array(repeating: false, count: N + 1)
//    var result = Set<Int>()
//    var graph: [[(Int,Int)]] = Array(repeating: [], count: N + 1)
//    var count = 0
//    for i in 0..<road.count{
//        graph[road[i][0]].append((road[i][1], road[i][2]))
//        graph[road[i][1]].append((road[i][0], road[i][2]))
//    }
//    result.insert(1)
//    
//    func dfs(_ start: Int){
//        visited[start] = true
//        for i in graph[start] {
//            if count > k {
//                return
//            }
//            if !visited[i.0]{
//                visited[i.0] = true
//                count += i.1
//                if count <= k {
//                    result.insert(i.0)
//                }
////                print("\(start) -> \(i.0) : \(count)")
//                dfs(i.0)
//                visited[i.0] = false
//                count -= i.1
//            }
//        }
//        
//        
//    }
//    
//    dfs(1)
////    print(result)
//    return result.count
//}
//print(solution(6, [[1,2,1],[1,3,2],[2,3,2],[3,4,3],[3,5,2],[3,5,3],[5,6,1]], 4))

