//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/01/21.
//


//let wh = readLine()!.split(separator: " ").map{Int(String($0))!}
//let w = wh[0]
//let h = wh[1]
//var arr = [[Character]]()
//let dx = [0, 0, -1, 1]
//let dy = [1, -1, 0, 0]
//
//var cLocation = [Int]()
//for i in 0..<h{
//    arr.append(readLine()!.map{$0})
//    for j in 0..<w{
//        if arr[i][j] == "C"{
//            cLocation.append(i)
//            cLocation.append(j)
//        }
//    }
//}
//arr[cLocation[0]][cLocation[1]] = "."
////print(cLocation)
//func bfs(){
//    var visited = Array(repeating: Array(repeating: Int.max, count: 10001), count: 10001)
//    var queue = [( (Int, Int), Int, Int )]() //x, y, 현재 큐의 진행방향, 거울개수
//    for i in 0..<4{
//        queue.append(((cLocation[0], cLocation[1]),i ,0))
//    }
//    visited[cLocation[0]][cLocation[1]] = 0
//
//    var idx = 0
//    while queue.count > idx {
//        let pop = queue[idx]
//        let x = pop.0.0
//        let y = pop.0.1
//        let direct = pop.1
//        let mirrorCnt = pop.2
//        idx += 1
//        for i in 0..<4{ //미래 진행방향
//            let nx = x + dx[i]
//            let ny = y + dy[i]
//            var nCnt = mirrorCnt //이거때매 개고생
//            if nx < 0 || nx >= h || ny < 0 || ny >= w || arr[nx][ny] == "*"{continue}
//            if direct != i{
//                nCnt += 1
//            }
//            if visited[nx][ny] >= nCnt {
//                visited[nx][ny] = nCnt
//                queue.append(((nx, ny), i, nCnt))
//            }
//
//
//        }
//
//    }
//    print(visited[cLocation[2]][cLocation[3]])
//}
//bfs()

