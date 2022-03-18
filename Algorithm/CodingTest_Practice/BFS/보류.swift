//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/03/15.
//로봇청소기(거의다왔다 중복만제거하면된다..)

//import Foundation
//
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
////recursiveFunction 보다 next_permutation이 더빠르다.
//while true{
//    let wh = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let w = wh[0]
//    let h = wh[1]
//    if w == 0 && h == 0 {
//        break
//    }
//    var arr = [[String]]()
//    var location = [(Int, Int)]()
//    for i in 0..<h{
//        arr.append(readLine()!.map{String($0)})
//        
//        //로봇과 쓰레기를 구분해주기위해서 로봇을 맨앞에 넣어줫음.
//        for j in 0..<w{
//            if arr[i][j] == "o" {
//                location.insert((i, j), at: 0)
//            }
//            if arr[i][j] == "*"{
//                location.append((i, j))
//            }
//        }
//    }
//    
//    func bfs(_ startX: Int, _ startY: Int) -> [[Int]]{
//        var queue = [(Int, Int)]()//좌표, 이동횟수
//        queue.append((startX, startY))
//        var visited = Array(repeating: Array(repeating: -1, count: w), count: h)
//        visited[startX][startY] = 0
//        var idx = 0
//        while queue.count > idx{
//            let pop = queue[idx]
//            idx += 1
//            let x = pop.0
//            let y = pop.1
//            
//            
//            for i in 0..<4{
//                let nx = x + dx[i]
//                let ny = y + dy[i]
//                
//                if nx < 0 || nx >= h || ny < 0 || ny >= w || visited[nx][ny] != -1{continue}
//                if arr[nx][ny] == "x"{continue}
//                queue.append((nx, ny))
//                visited[nx][ny] = visited[x][y] + 1
//            }
//        }
//        return visited
//    }
//    var notContinue = false
//    var dist = Array(repeating: Array(repeating: 0, count: location.count), count: location.count)
//    for i in 0..<location.count{
//        let path = bfs(location[i].0, location[i].1)
//        for j in 0..<location.count{
//            dist[i][j] = path[location[j].0][location[j].1]
//            if dist[i][j] == -1{
//                notContinue = true
//            }
//        }
//    }
//    var result = Int.max
//    var dfsVisit = Array(repeating: false, count: 11)
//    var sum = 0
//    func dfs(_ depth: Int, _ curLocation: Int){
//        if depth == location.count{
//            print(sum)
//            result = min(result, sum)
//            return
//        }
//
//        for i in depth..<location.count{
//            //
//            if !dfsVisit[i]{
//                dfsVisit[i] = true
//                print("curLocation : \(curLocation) i : \(i)")
//                sum += dist[curLocation][i]
//                dfs(depth + 1, i)
//                sum -= dist[curLocation][i]
//                print("i : \(i)")
//                dfsVisit[i] = false
//            }
//        }
//
//    }
//    
////    func permutation(_ left: Int, _ right: Int){
////        if left == right{
////            result = min(result, sum)
////            return
////        }
////        for idx in left...right{
////            location.swapAt(left, idx)
////            sum += dist[left][idx]
////            permutation(left + 1, right)
////            sum -= dist[left][idx]
////            location.swapAt(left, idx)
////        }
////
////    }
////    permutation(0, location.count)
//    dfs(1, 0)
//    if notContinue{
//        print(-1)
//    }else{
//        print(result)
//    }
//}
