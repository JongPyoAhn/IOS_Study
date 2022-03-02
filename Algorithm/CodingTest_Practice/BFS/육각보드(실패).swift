//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/02.
//



//let n = Int(String(readLine()!))!
//var arr = [[String]]()
//
//let dx = [-1, 0]
//let dy = [0, 1]
//
//let checkX = [0, 0, -1, 1, -1, 1]
//let checkY = [-1, 1, 0, 0, -1, 1]
//for _ in 0..<n{
//    arr.append(readLine()!.map{String($0)})
//}
//var result = 0
//var visited = Array(repeating: Array(repeating: false, count: n), count: n)
//func check(_ x: Int, _ y: Int){
//    var cnt = 0
//    for i in 0..<6{
//        let nx = x + checkX[i]
//        let ny = y + checkY[i]
//        if nx < 0 || nx >= n || ny < 0 || ny >= n {continue}
//
//        if arr[nx][ny] == "X" && visited[nx][ny] {
//            cnt += 1
//        }
//    }
//    if cnt == 0 {
//        result = max(result, 1)
//    }else if cnt == 1{
//        result = max(result, 2)
//    }else{
//        result = max(result, 3)
//    }
////    print("x : \(x) y : \(y) cnt : \(cnt)")
//}
//func bfs(){
//    var queue = [(Int, Int)]()
//    queue.append((n - 1,0))
//    visited[n - 1][0] = true
//
//    while !queue.isEmpty{
//        let pop = queue.removeFirst()
//        let x = pop.0
//        let y = pop.1
////        print("x : \(x) y : \(y)")
//        if arr[x][y] == "X"{
//            check(x, y)
//        }
//
//        for i in 0..<2{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//
//            if nx < 0 || nx >= n || ny < 0 || ny >= n || visited[nx][ny]{continue}
//            visited[nx][ny] = true
//            queue.append((nx, ny))
//        }
//
//
//    }
//}
//bfs()
//print(result)
