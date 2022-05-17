//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/16.
// 다시

//import Foundation
//let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//let k = nk[1]
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var count = 0
//var start = 0
//var end = n - 1
//var visited = Array(repeating: false, count: 2 * n)
//var robot = [Int]()
//func moveBelt(){
//    start -= 1
//    end -= 1
//    if start < 0 {start =  2 * n - 1}
//    if end < 0 {end = 2 * n - 1}
//}
//func moveRobot(){
//    for _ in 0..<robot.count{
//        let cur = robot.removeFirst()
//        visited[cur] = false
//
//        if cur == end {continue}
//        var next = cur + 1
//        if next > 2 * n - 1 {next = 0}
//        if arr[next] >= 1 && visited[next] == false{
//            arr[next] -= 1
//            if arr[next] == 0 {count += 1}
//            if next == end {continue}
//            visited[next] = true
//            robot.append(next)
//        }else{
//            visited[cur] = true
//            robot.append(cur)
//        }
//    }
//}
//func makeRobot(){
//    if visited[start] == false && arr[start] >= 1{
//        visited[start] = true
//        arr[start] -= 1
//        robot.append(start)
//        if arr[start] == 0 {count += 1}
//    }
//}
//var result = 0
//while count < k {
//
//    result += 1
//    moveBelt()
//    moveRobot()
//    makeRobot()
//}
//print(result)
