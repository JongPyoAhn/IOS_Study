//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/30.
// 다시


//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = [[Character]]()
//let dx = [0,0,-1,1]
//let dy = [1,-1,0,0]
//var result = false
//var visited = Array(repeating: Array(repeating: false, count: 51), count: 51)
//for _ in 0..<n{
//    let a = readLine()!
//    var char = [Character]()
//    for i in a {
//        char.append(i)
//    }
//    arr.append(char)
//}
//for i in 0..<n{
//    for j in 0..<m{
//        if !visited[i][j]{
//            dfs(i, j, 1, i, j)
//        }
//    }
//}
//if result{
//    print("Yes")
//}else {
//    print("No")
//}
//
//
//func dfs(_ x: Int, _ y: Int, _ depth: Int, _ startX: Int, _ startY: Int){
//    visited[x][y] = true
//    for i in 0..<4{
//        let nx = x + dx[i]
//        let ny = y + dy[i]
//        if nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny] && arr[nx][ny] == arr[x][y]{
//            dfs(nx, ny, depth + 1, startX, startY)
//
//        }
//        if nx == startX && ny == startY && depth >= 4{
//            result = true
//            return
//        }
//    }
//    visited[x][y] = false
//}


