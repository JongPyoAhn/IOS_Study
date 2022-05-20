//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/18.
//

//import Foundation
//let t = Int(String(readLine()!))!
//var arr = [[Int]]()
//for _ in 0..<t{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//
//let k = Int(String(readLine()!))!
//for _ in 0..<k{
//    let nr = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let n = nr[0] - 1 //인덱스 맞추기위해 -1
//    let r = nr[1]
//    var queue = [(Int, Int)]()//몇번째 톱니바퀴인지, 방향
//    var beforeLoc = [(Int, Int)]() //톱니바퀴가 돌기전의 상태를 저장해놔야함.
//    var visited = Array(repeating: false, count: t)
//    for i in 0..<t{
//        beforeLoc.append((arr[i][2], arr[i][6]))
//    }
//    queue.append((n, r))
//    visited[n] = true
//    while !queue.isEmpty{
//        let (curN, curR) = queue.removeFirst()
//        rotate(curN, curR)
//        if curN == 0{
//            if rightDistinction(beforeLoc, curN){
//                if !visited[curN + 1]{
//                    visited[curN + 1] = true
//                    queue.append((curN + 1, curR * -1))
//                }
//            }
//        }else if curN == t-1{
//            if leftDistinction(beforeLoc, curN){
//                if !visited[curN - 1]{
//                    visited[curN - 1] = true
//                    queue.append((curN - 1, curR * -1))
//                }
//            }
//        }else{
//            if rightDistinction(beforeLoc, curN){
//                if !visited[curN + 1]{
//                    visited[curN + 1] = true
//                    queue.append((curN + 1, curR * -1))
//                }
//            }
//            if leftDistinction(beforeLoc, curN){
//                if !visited[curN - 1]{
//                    visited[curN - 1] = true
//                    queue.append((curN - 1, curR * -1))
//                }
//            }
//        }
//    }
//    
//}
//func rotate(_ curN: Int, _ curR: Int){
//    var temp = Array(repeating: 0, count: 8)
//    var idx = 0
//    for _ in 0..<8{
//        let inIdx: Int = {
//            if idx + curR < 0{
//                return 7
//            }else if idx + curR > 7{
//                return 0
//            }else {
//                return idx + curR
//            }
//        }()
//        temp[inIdx] = arr[curN][idx]
//        idx += 1
//    }
//    arr[curN] = temp
//}
//
//func leftDistinction(_ loc: [(Int, Int)], _ curN: Int) -> Bool{//극이 달라서 반대방향으로 회전해야되면 true
//    if loc[curN].1 != loc[curN - 1].0{
//        return true
//    }else{
//        return false
//    }
//}
//
//func rightDistinction(_ loc: [(Int, Int)], _ curN: Int) -> Bool{//극이 달라서 반대방향으로 회전해야되면 true
//    if loc[curN].0 != loc[curN + 1].1{
//        return true
//    }else{
//        return false
//    }
//}
//var count = 0
//for i in arr{
//    if i[0] == 1{
//        count += 1
//    }
//}
//print(count)



