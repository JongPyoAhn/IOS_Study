//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/28.
//

//import Foundation
//
//
//
//var locationO = (0,0)
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//
//var isContinue = false
//
//while true{
//    var cnt = 0
//    var isApproach = false
//    var arr = [[String]]()
//    let wh = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let w = wh[0]
//    let h = wh[1]
//    if w == 0 && h == 0 {
//        break
//    }
//
//    for i in 0..<h{
//        arr.append(readLine()!.map{String($0)})
//        for j in 0..<w{
//            if arr[i][j] == "o" {
//                locationO = (i, j)
//
//            }
//        }
//    }
//
//    while true{
//        isContinue = false
//        bfs(locationO.0, locationO.1)
//        for i in 0..<h{
//            for j in 0..<w{
//                if arr[i][j] == "*"{
//                    isContinue = true
//                }
//            }
//        }
//        if !isApproach{
//            print(-1)
//            break
//        }
//        if !isContinue{
//            print(cnt)
//            break
//        }
//    }
//
//    func bfs(_ startX: Int, _ startY: Int){
//        var queue = [((Int,Int), Int)]() //O의 x,y좌표, *먹은 갯수
//        var visited = Array(repeating: Array(repeating: false, count: w), count: h)
//        queue.append(((startX, startY), 0))
//        var idx = 0
//        while queue.count > idx{
//            let pop = queue[idx]
//            idx += 1
//            let x = pop.0.0
//            let y = pop.0.1
//            if arr[x][y] == "*"{
//                isApproach = true
//                arr[x][y] = "."
//                locationO.0 = x
//                locationO.1 = y
//                cnt += pop.1
//                break
//            }
//
//            for i in 0..<4{
//                let nx = x + dx[i]
//                let ny = y + dy[i]
//
//                if nx < 0 || nx >= h || ny < 0 || ny >= w || visited[nx][ny] {continue}
//                if arr[nx][ny] == "x" {continue}
//                queue.append(((nx, ny), pop.1 + 1))
//                visited[nx][ny] = true
//
//            }
//
//        }
//
//    }
//}



//7 5
//.......
//.o...*.
//.......
//.*...*.
//.......
//15 13
//.......x.......
//...o...x....*..
//.......x.......
//.......x.......
//.......x.......
//...............
//xxxxx.....xxxxx
//...............
//.......x.......
//.......x.......
//.......x.......
//..*....x....*..
//.......x.......
//10 10
//..........
//..o.......
//..........
//..........
//..........
//.....xxxxx
//.....x....
//.....x.*..
//.....x....
//.....x....
//0 0
