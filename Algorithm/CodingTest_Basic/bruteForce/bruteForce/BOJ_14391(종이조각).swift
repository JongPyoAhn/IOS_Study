//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2022/03/22.
//

//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = [[Int]]()
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//var visited = Array(repeating: Array(repeating: false, count: m), count: n)
//var result = 0
//func dfs(_ x: Int, _ y: Int){
//    if x == n {
//        result = max(result, oper())
//        return
//    }
//    if y == m {
//        dfs(x + 1, 0)
//        return
//    }
//    
//    visited[x][y] = true
//    dfs(x, y + 1)
//    visited[x][y] = false
//    dfs(x, y + 1)
//    
//}
//
//func oper() -> Int{
//    var total = 0
//    var sum = 0
//    
//    for i in 0..<n{
//        sum = 0
//        for j in 0..<m{
//            if visited[i][j]{
//                sum = sum * 10 + arr[i][j]
//            }else{
//                total += sum
//                sum = 0
//            }
//        }
//        total += sum
//    }
//    
//    for j in 0..<m{
//        sum = 0
//        for i in 0..<n{
//            if !visited[i][j]{
//                sum = sum * 10 + arr[i][j]
//            }else{
//                total += sum
//                sum = 0
//            }
//        }
//        total += sum
//    }
//        return total
//}
//
//    
//dfs(0, 0)
//print(result)
