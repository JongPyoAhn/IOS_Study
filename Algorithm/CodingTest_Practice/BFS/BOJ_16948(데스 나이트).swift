//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/14.
// O

//let n = Int(String(readLine()!))!
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var queue = [([Int], Int)]()
//var visited = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
//var isChecked = true
//func bfs(){
//    queue.append(([arr[0],arr[1]],0))
//    visited[arr[0]][arr[1]] = true
//    while !queue.isEmpty{
//        //pop.0[0] = r
//        //pop.0[1] = c
//        let pop = queue.removeFirst()
//        if pop.0[0] == arr[2] && pop.0[1] == arr[3]{
//            print(pop.1)
//            isChecked = false
//            break
//        }
//
//        if pop.0[0] - 2 >= 0 && pop.0[0] - 2 < n{
//            if  pop.0[1] - 1 >= 0 && pop.0[1] - 1 < n && !visited[pop.0[0] - 2][pop.0[1] - 1]{
//                visited[pop.0[0] - 2][pop.0[1] - 1] = true
//                queue.append(([pop.0[0] - 2,pop.0[1] - 1],pop.1 + 1))
//            }
//            if  pop.0[1] + 1 >= 0 && pop.0[1] + 1 < n && !visited[pop.0[0] - 2][pop.0[1] + 1]{
//                visited[pop.0[0] - 2][pop.0[1] + 1] = true
//                queue.append(([pop.0[0] - 2,pop.0[1] + 1],pop.1 + 1))
//            }
//        }
//
//        if pop.0[0] >= 0 && pop.0[0] < n{
//            if  pop.0[1] - 2 >= 0 && pop.0[1] - 2 < n && !visited[pop.0[0]][pop.0[1] - 2]{
//                visited[pop.0[0]][pop.0[1] - 2] = true
//                queue.append(([pop.0[0],pop.0[1] - 2],pop.1 + 1))
//            }
//            if  pop.0[1] + 2 >= 0 && pop.0[1] + 2 < n && !visited[pop.0[0]][pop.0[1] + 2]{
//                visited[pop.0[0]][pop.0[1] + 2] = true
//                queue.append(([pop.0[0],pop.0[1] + 2],pop.1 + 1))
//            }
//        }
//
//        if pop.0[0] + 2 >= 0 && pop.0[0] + 2 < n{
//            if  pop.0[1] - 1 >= 0 && pop.0[1] - 1 < n && !visited[pop.0[0] + 2][pop.0[1] - 1]{
//                visited[pop.0[0] + 2][pop.0[1] - 1] = true
//                queue.append(([pop.0[0] + 2,pop.0[1] - 1],pop.1 + 1))
//            }
//            if  pop.0[1] + 1 >= 0 && pop.0[1] + 1 < n && !visited[pop.0[0] + 2][pop.0[1] + 1]{
//                visited[pop.0[0] + 2][pop.0[1] + 1] = true
//                queue.append(([pop.0[0] + 2,pop.0[1] + 1],pop.1 + 1))
//            }
//        }
//    }
//    if isChecked{
//        print(-1)
//    }
//
//}
//bfs()
//
