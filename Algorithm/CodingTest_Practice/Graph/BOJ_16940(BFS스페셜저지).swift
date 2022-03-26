//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/25.
// 

//import Foundation
//let n = Int(String(readLine()!))!
//var graph = Array(repeating: [Int](), count: n + 1)
//for _ in 0..<n - 1{
//    let a = readLine()!.split(separator: " ").map{Int(String($0))!}
//    graph[a[0]].append(a[1])
//    graph[a[1]].append(a[0])
//}
//var order = readLine()!.split(separator: " ").map{Int(String($0))!}
//var bfsOrder = Array(repeating: -1, count: order.count + 1)
//var result = [Int]()
//
//func bfs(){
//    var queue = [Int]()
//    var visited = Array(repeating: false, count: n + 1)
//
//    queue.append(1)
//    visited[1] = true
//    result.append(1)
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        for i in graph[pop]{
//            if !visited[i]{
//                queue.append(i)
//                visited[i] = true
//                result.append(i)
//            }
//        }
//
//    }
//}
//for i in 0..<order.count{
//    bfsOrder[order[i]] = i + 1
//}
//
////func quickSort(_ arr: [Int]) -> [Int]{
////    guard let first = arr.first, arr.count > 1 else {return arr}
////    let pivot = first
////    let left = arr.filter{bfsOrder[$0] < bfsOrder[pivot]}
////    let right = arr.filter{bfsOrder[$0] > bfsOrder[pivot]}
////
////    return quickSort(left) + [pivot] + quickSort(right)
////}
//
//for i in 1...n{
////    graph[i] = quickSort(graph[i])
//    graph[i].sort{bfsOrder[$0] < bfsOrder[$1]}
//}
//
//bfs()
//
//if result == order {
//    print(1)
//}else{
//    print(0)
//}
//
////퀵정렬 https://babbab2.tistory.com/101
