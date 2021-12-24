//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/24.
// O

//import Foundation
//let n = Int(String(readLine()!))!
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let operandArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var resultArr = [Character]()
//var visited = Array(repeating: false, count: n + 1)
//var maxResult = -999999999
//var minResult = Int.max
//
//var temp = [Character]()
//var operArr = operandArr
//for i in 0..<4{
//    while operArr[i] >= 1 {
//        if i == 0{
//            temp.append("+")
//            operArr[i] -= 1
//        }else if i == 1{
//            temp.append("-")
//            operArr[i] -= 1
//        }else if i == 2{
//            temp.append("*")
//            operArr[i] -= 1
//        }else if i == 3{
//            temp.append("/")
//            operArr[i] -= 1
//        }
//    }
//}
//
//
//func dfs(_ depth: Int){
//    var p = 1
//    var result = arr[0]
//    if depth == temp.count{
//        for i in resultArr{
//            if i == "+"{
//                result += arr[p]
//                p = p + 1
//            }else if i == "-"{
//                result -= arr[p]
//                p = p + 1
//            }else if i == "*"{
//                result *= arr[p]
//                p = p + 1
//            }else if i == "/"{
//                result /= arr[p]
//                p = p + 1
//            }
//        }
//
//        maxResult = max(result, maxResult)
//        minResult = min(result, minResult)
//        return
//    }
//    for i in 0..<temp.count{
//        if !visited[i] {
//            visited[i] = true
//            resultArr.append(temp[i])
//            dfs(depth + 1)
//            visited[i] = false
//            resultArr.removeLast()
//        }
//    }
//
//}
//dfs(0)
//print(maxResult)
//print(minResult)
