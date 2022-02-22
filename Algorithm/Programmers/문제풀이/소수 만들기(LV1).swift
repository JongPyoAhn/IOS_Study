//
//  main.swift
//  ProgrammersInternShip
//
//  Created by 안종표 on 2021/11/06.
//


//func solution(_ nums:[Int]) -> Int {
//    var answer = 0
//    var visited = Array(repeating: false, count: nums.count)
//    var result = 0
//    var isNumber = true
//
//    func dfs(_ depth: Int, _ start: Int){
//        if depth == 3{
//            for i in 2..<result {
//                if result % i == 0 {
//                    isNumber = false
//                }
//            }
//            if isNumber{
//                answer += 1
//            }
//            isNumber = true
//            return
//        }
//        for i in start..<nums.count {
//            if !visited[i]{
//                visited[i] = true
//                result += nums[i]
//                dfs(depth + 1, i)
//                result -= nums[i]
//                visited[i] = false
//            }
//        }
//    }
//    dfs(0, 0)
//    return answer
//}
//
//
//
//print(solution([1, 2, 3, 4]))
