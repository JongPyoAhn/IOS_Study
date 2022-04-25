//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/25.
//

//import Foundation
//func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
//    var arr = [[Int]]()
//    var count = 1
//    var answer = [Int]()
//    for i in 0..<rows{
//        arr.append([])
//        for _ in 0..<columns{
//            arr[i].append(count)
//            count += 1
//        }
//    }
//    for i in queries{
//        let startX = i[0] - 1
//        let startY = i[1] - 1
//        let endX = i[2] - 1
//        let endY = i[3] - 1
//
//        var curX = startX
//        var curY = startY
//        var beforeTemp = arr[startX][startY]
//
//        var result = Int.max
//        for j in stride(from: startY+1, through: endY, by: 1){
//            result = min(result, beforeTemp)
//            let temp = arr[curX][j]
//            arr[curX][j] = beforeTemp
//            beforeTemp = temp
//            curY = j
//        }
//        for j in stride(from: startX + 1, through: endX, by: 1){
//            result = min(result, beforeTemp)
//            let temp = arr[j][curY]
//            arr[j][curY] = beforeTemp
//            beforeTemp = temp
//            curX = j
//        }
//        for j in stride(from: endY-1, through: startY, by: -1){
//            result = min(result, beforeTemp)
//            let temp = arr[curX][j]
//            arr[curX][j] = beforeTemp
//            beforeTemp = temp
//            curY = j
//        }
//        for j in stride(from: endX - 1, through: startX, by: -1){
//            result = min(result, beforeTemp)
//            let temp = arr[j][curY]
//            arr[j][curY] = beforeTemp
//            beforeTemp = temp
//            curX = j
//        }
//        answer.append(result)
//    }
//
//    return answer
//}
//print(solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]]))
