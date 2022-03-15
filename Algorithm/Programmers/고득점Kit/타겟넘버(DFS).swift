//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/03/07.
// 다시

//import Foundation
//
//func solution(_ numbers:[Int], _ target:Int) -> Int {
//    var result = 0
//    func dfs(_ depth: Int, _ sum: Int){
//        if depth == numbers.count{
//            if target == sum {
//                result += 1
//            }
//            return
//        }
//
//        dfs(depth + 1, sum + numbers[depth])
//        dfs(depth + 1, sum - numbers[depth])
//    }
//    dfs(0, 0)
//    return result
//}
//
//let numbers = [1, 1, 1, 1, 1]
//let target = 3
//print(solution(numbers, target))
