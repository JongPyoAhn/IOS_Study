//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/27.
// O
////총 1층 ~ F층
////S층에서 G층으로 가기위해 눌러야하는 버튼 수
//let fsgud = readLine()!.split(separator: " ").map{Int(String($0))!}
//let f = fsgud[0] //총 층수
//let s = fsgud[1] //현재 강호의 위치
//let g = fsgud[2] //스타트링크 위치
//let u = fsgud[3] //수 만큼 위로 올라감
//let d = fsgud[4] //수 만큼 아래로 내려감
//var isStair = true
//func bfs(){
//    var visited = Array(repeating: false, count: 1000001)
//    var queue = [(Int, Int)]() //현재 강호의 위치, 버튼 누른 수
//    queue.append((s, 0))
//    visited[s] = true
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        if pop.0 == g{
//            isStair = false
//            print(pop.1)
//            break
//        }
//
//        if pop.0 + u <= f && !visited[pop.0 + u]{
//            queue.append((pop.0 + u, pop.1 + 1))
//            visited[pop.0 + u] = true
//        }
//        if pop.0 - d > 0 && !visited[pop.0 - d]{
//            queue.append((pop.0 - d, pop.1 + 1))
//            visited[pop.0 - d] = true
//        }
//
//    }
//    if isStair{
//        print("use the stairs")
//    }
//}
//bfs()
