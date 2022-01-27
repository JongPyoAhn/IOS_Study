//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/26.
// O

//let st = readLine()!.split(separator: " ").map{Int(String($0))!}
//let s = st[0]
//let t = st[1]
//var isChange = false
//func bfs(){
//
//    var visited = Array(repeating: false, count: 1000000001)
//    var queue = [(Int, [String])]()
//
//    queue.append((s, []))
//
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        if pop.0 == t{
//            isChange = true
//            if pop.1.count == 0{
//                print(0)
//            }else{
//                print(pop.1.map{String($0)}.joined(separator: ""))
//            }
//            break
//        }
//        var arr = pop.1
//        if pop.0 * pop.0 <= 1000000000 {
//            if !visited[pop.0 * pop.0]{
//                arr.append("*")
//                queue.append((pop.0 * pop.0, arr))
//                visited[pop.0 * pop.0] = true
//                arr.removeLast()
//            }
//        }
//
//        if pop.0 + pop.0 <= 1000000000{
//            if !visited[pop.0 + pop.0]{
//                arr.append("+")
//                queue.append((pop.0 + pop.0, arr))
//                visited[pop.0 + pop.0] = true
//                arr.removeLast()
//            }
//        }
//
//        if pop.0 - pop.0 >= 0{
//            if !visited[pop.0 - pop.0]{
//                arr.append("-")
//                queue.append((pop.0 - pop.0, arr))
//                visited[pop.0 - pop.0] = true
//                arr.removeLast()
//            }
//        }
//
//        if pop.0 != 0 && !visited[pop.0 / pop.0]{
//            arr.append("/")
//            queue.append((pop.0 / pop.0, arr))
//            visited[pop.0 / pop.0] = true
//            arr.removeLast()
//        }
//    }
//    if !isChange{
//        print(-1)
//    }
//}
//
//bfs()
