//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/17.
//

//import Foundation
//var arr = [[Character]]()
//let column: [Character] = [".",".",".",".",".",".",".","."]
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var visited = Array(repeating: Array(repeating: false, count: 8), count: 8)
//for _ in 0..<8{
//    arr.append(readLine()!.map{Character(String($0))})
//}
//var result = false
//var queue = [((Int,Int), [[Character]])]()
//func bfs(){
//    queue.append(((7,0), arr))
//    visited[7][0] = true
//    while !queue.isEmpty{
//        let pop = queue.removeLast()
////        print("x : \(pop.0.0), y : \(pop.0.1)")
////        print("arr : \(pop.1)")
//        if pop.0.0 == 7 && pop.0.1 == 7 {
//            result = true
//            break
//        }
//        //현재 자신의 위치에 벽이있다면 현재위치에 멈추고 더이상 큐에 넣지않음
//        if pop.1[pop.0.0][pop.0.1] == "#"{
//            continue
//        }else{
//            // 상,하, 좌, 우
//            for i in 0..<4 {
//                let nx = pop.0.0 + dx[i]
//                let ny = pop.0.1 + dy[i]
////                print(pop.1)
//                if nx >= 0 && nx < 8 && ny >= 0 && ny < 8 && !visited[nx][ny] && pop.1[nx][ny] == "."{
//                    var tempArr = pop.1
//                    tempArr.removeLast()
//                    tempArr.insert(column, at: 0)
//                    queue.append(((nx, ny), tempArr))
//                    visited[nx][ny] = true
//                }
//            }
//            // 대각선 우
//            if pop.0.0 - 1 >= 0 && pop.0.1 + 1 < 8 && !visited[pop.0.0 - 1][pop.0.1 + 1] && pop.1[pop.0.0 - 1][pop.0.1 + 1] == "."{
//                var tempArr = pop.1
//                tempArr.removeLast()
//                tempArr.insert(column, at: 0)
//                queue.append(((pop.0.0 - 1, pop.0.1 + 1), tempArr))
//                visited[pop.0.0 - 1][pop.0.1 + 1] = true
//            }
//            // 대각선 좌
//            if pop.0.0 - 1 >= 0 && pop.0.1 - 1 >= 0 && !visited[pop.0.0 - 1][pop.0.1 - 1] && pop.1[pop.0.0 - 1][pop.0.1 - 1] == "."{
//                var tempArr = pop.1
//                tempArr.removeLast()
//                tempArr.insert(column, at: 0)
//                queue.append(((pop.0.0 - 1, pop.0.1 - 1), tempArr))
//                visited[pop.0.0 - 1][pop.0.1 - 1] = true
//            }
//            //제자리
//            if !visited[pop.0.0][pop.0.1]{
//                var temp = pop.1
//                temp.removeLast()
//                temp.insert(column, at: 0)
//                queue.append(((pop.0.0, pop.0.1), temp))
//                visited[pop.0.0][pop.0.1] = true
//            }
//            
//            
//        }
//        
//    }
//}
//
//bfs()
//if result{
//    print(1)
//}else{
//    print(0)
//}
