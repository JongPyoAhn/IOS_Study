//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/20.
// 다시
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = [Int]()
//for _ in 0..<n{
//    arr.append(Int(String(readLine()!))!)
//}
//arr.sort()
//
//var diff = 0
//var result = Int.max
//var end = 0
//
//for start in 0..<n{
//    while end < n{
//        diff = abs(arr[start] - arr[end])
//        if diff >= m {
//            result = min(result, diff)
//            break
//        }
//        if diff < m {
//            end += 1
//        }
//    }
//}
//print(result)
