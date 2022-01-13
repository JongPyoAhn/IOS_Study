//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/13.
// 혼자힘으로 거의풀었다.. Dfs바로밑에 5줄빼고.. 그니까 다시풀기

//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = Array(repeating: [String](), count: n + 2)
//var coinLocation = [(Int,Int)]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var visited1 = Array(repeating: Array(repeating: false, count: m + 3), count: n + 3)
//var visited2 = Array(repeating: Array(repeating: false, count: m + 3), count: n + 3)
//var result = Int.max
//for _ in 0...m + 1{
//    arr[0].append("x")
//}
//for i in 1...n{
//    arr[i].append("x")
//    for j in (readLine()!.map{String($0)}) {
//        arr[i].append(j)
//        if j == "o"{
//            coinLocation.append((i, arr[i].count - 1)) //코인위치 저장
//        }
//    }
//    arr[i].append("x")
//}
//for _ in 0...m + 1{
//    arr[n + 1].append("x")
//}
//
////print(arr)
//func dfs(_ depth: Int, _ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int){
//
//    if result < depth {//
//        return
//    }
//    if depth > 10 {//
//        result = min(result, depth)
//        return
//    }
//
//    for i in 0..<4{
//        let nx1 = x1 + dx[i]
//        let ny1 = y1 + dy[i]
//
//        let nx2 = x2 + dx[i]
//        let ny2 = y2 + dy[i]
//
//        if arr[nx1][ny1] == "x" && arr[nx2][ny2] == "x"{
//            continue
//        }else if arr[nx1][ny1] == "x"{
//
//            result = min(result, depth)
////            print(result)
//        }else if arr[nx2][ny2] == "x"{
//            result = min(result, depth)
////            print(result)
//        }
//
//
//
//        if nx1 >= 0 && nx1 < n + 2 && ny1 >= 0 && ny1 < m + 2 && !visited1[nx1][ny1] && nx2 >= 0 && nx2 < n + 2 && ny2 >= 0 && ny2 < m + 2 && !visited2[nx2][ny2] && arr[nx1][ny1] != "x" && arr[nx2][ny2] != "x"{
//            if arr[nx1][ny1] != "#" && arr[nx2][ny2] != "#"{
//                visited1[nx1][ny1] = true
//                visited2[nx2][ny2] = true
//                dfs(depth + 1, nx1, ny1, nx2, ny2)
//                visited1[nx1][ny1] = false
//                visited2[nx2][ny2] = false
//            }else if arr[nx1][ny1] == "#" && arr[nx2][ny2] == "#"{
//                visited1[nx1][ny1] = true
//                visited2[nx2][ny2] = true
//                dfs(depth + 1, x1, y1, x2, y2)
//                visited1[nx1][ny1] = false
//                visited2[nx2][ny2] = false
//            }else if arr[nx1][ny1] == "#"{
//                visited2[nx2][ny2] = true
//                dfs(depth + 1, x1, y1, nx2, ny2)
//                visited2[nx2][ny2] = false
//            }else if arr[nx2][ny2] == "#"{
//                visited1[nx1][ny1] = true
//                dfs(depth + 1, nx1, ny1, x2, y2)
//                visited1[nx1][ny1] = false
//            }
//
//        }
//
//
//    }
//}
//dfs(1, coinLocation[0].0, coinLocation[0].1, coinLocation[1].0, coinLocation[1].1)
//
//if result > 10 {
//    print(-1)
//}else{
//    print(result)
//}
