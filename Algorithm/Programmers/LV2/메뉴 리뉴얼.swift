//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/27.
// 문제조건 제대로 안읽었음. 다시.
//import Foundation
//
//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    //조합
//    var visited = Array(repeating: false, count: 11)
//    var temp = ""
//    var dict = [String:Int]()
//    func dfs(_ order: [String], _ depth: Int, _ start: Int){
//        if depth >= 2{
//            let sorTemp = String(temp.sorted())
//            if dict[sorTemp] == nil{
//                dict[sorTemp] = 1
//            }else{
//                dict[sorTemp]! += 1
//            }
//        }
//        
//        for i in start..<order.count{
//            if !visited[i]{
//                visited[i] = true
//                temp += "\(order[i])"
//                dfs(order, depth + 1, i)
//                visited[i] = false
//                temp.removeLast()
//            }
//        }
//    }
//    
//    for i in 0..<orders.count{
//        let arr = orders[i].map{String($0)}
//        dfs(arr, 0, 0)
//    }
//    var result = [String]()
//    var keycountValue = [Int:Int]()
//    for i in course{
//        keycountValue[i] = 0
//    }
//    for (key, value) in dict{
//        if course.contains(key.count){
//            keycountValue[key.count] = max(keycountValue[key.count]!, value)
//        }
//    }
//    for (key,value) in dict{
//        if value == keycountValue[key.count] && value >= 2{
//            result.append(key)
//        }
//    }
//    
//    result.sort()
//    return result
//}
//
//print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2,3,5]))
