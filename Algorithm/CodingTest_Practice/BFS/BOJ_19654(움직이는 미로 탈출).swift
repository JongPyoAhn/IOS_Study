//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/22.
//
//var arr = [[String]]()
//for _ in 0..<8{
//    arr.append(readLine()!.map{String($0)})
//}
//let dx = [1, -1, 0, 0, -1, -1, 1, 1, 0]
//let dy = [0, 0, -1, 1, -1, 1, 1, -1, 0]
//
//func down(_ arr: [[String]]) -> [[String]]{
//    var temp = Array(arr.reversed()).dropFirst()
//    temp.append([".",".",".",".",".",".",".","."])
//    return Array(temp.reversed())
//}
//var result = false
//func bfs(){
//    var queue = [(Int, Int, Int, [[String]])]()
//    var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 8), count: 8), count: 9)
//    let copiedArr = arr
//    queue.append((0, 7, 0, copiedArr))
//    visited[0][7][0] = true
//
//    var idx = 0
//    while queue.count > idx {
//        let (t, x, y, tempArr) = queue[idx]
//        idx += 1
//
//        if x == 0 && y == 7{
//            result = true
//        }
//
//        for i in 0..<9{
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//            let nt = min(t + 1, 8)
//            let nArr = down(tempArr)
//            if nx < 0 || nx >= 8 || ny < 0 || ny >= 8 || visited[nt][nx][ny] {continue}
//            if tempArr[nx][ny] == "#" {continue}
//            if nArr[nx][ny] == "#" {continue}
//
//            queue.append((nt, nx, ny, nArr))
//            visited[nt][nx][ny] = true
//        }
//    }
//
//}
//bfs()
//if result{
//    print(1)
//}else{
//    print(0)
//}

