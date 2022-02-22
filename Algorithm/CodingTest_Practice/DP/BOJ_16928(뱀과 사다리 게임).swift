//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/13.
// O

//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//
//var arr = [[Int]]()
//for _ in 0..<n + m{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//
//func bfs(){
//    var visited = Array(repeating: false, count: 101)
//    var queue = [(Int, Int)]()//현재위치, 주사위굴린 횟수
//        
//    queue.append((1, 0))
//    visited[1] = true
//    var idx = 0
//    while queue.count > idx{
//        let pop = queue[idx]
//        idx += 1
//        var curLocation = pop.0
//        
//        if curLocation == 100{
//            print(pop.1)
//            break
//        }
//        for i in arr{
//            if i[0] == pop.0{
//                curLocation = i[1]
//            }
//        }
//        for i in 1...6{
//            let move = curLocation + i
//            if move > 100 || visited[move] {continue}
//            queue.append((move, pop.1 + 1))
//            visited[move] = true
//        }
//        
//    }
//}
//                    
//bfs()
