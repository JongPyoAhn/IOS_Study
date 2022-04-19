//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/18.
// O

//import Foundation
//print(solution("011"))
//func solution(_ numbers:String) -> Int {
//    let number = numbers.map{String($0)}
//    var setNum = Set<Int>()
//    var visited = Array(repeating: false, count: numbers.count)
//    var tempArr = [String]()
//
//    var arr = Array(repeating: 0, count: 10000000)
//    func primeNumberSieve(){
//        for i in 2...9999999{
//            arr[i] = i
//        }
//        for i in 2...9999999{
//            if arr[i] == 0 {continue}
//            for j in stride(from: i + i, through: 9999999, by: i){
//                arr[j] = 0
//            }
//        }
//
//    }
//    primeNumberSieve()
//    func dfs(){
//        for i in 0..<numbers.count{
//            if !visited[i]{
//                visited[i] = true
//                tempArr.append(number[i])
//                let temp = Int(tempArr.joined())!
//                if arr[temp] != 0{
//                    setNum.insert(temp)
//                }
//                dfs()
//                visited[i] = false
//                tempArr.removeLast()
//            }
//        }
//    }
//    dfs()
//
//
//    return setNum.count
//}

