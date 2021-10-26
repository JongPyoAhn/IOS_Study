//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/28.
// 다시풀긴풀었는데 문제이해오래걸림. 다시.
//import Foundation
//let n = Int(String(readLine()!))!
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//arr.sort()
//var sum = 1
//
//func factorial(_ n: Int){
//    if n == 0 {
//        return
//    }
//    sum *= n
//    factorial(n - 1)
//
//}
//
//factorial(n)
//
//var resultSum = 0
//
//for _ in 0..<sum {
//    var nowSum = 0
//    for i in 0..<arr.count {
//        if i + 1 < arr.count {
//            nowSum += abs(arr[i] - arr[i + 1])
//        }
//    }
//    resultSum = max(resultSum, nowSum)
//    var index = 0
//    for i in 0..<n{
//        if i + 1 < n, arr[i] < arr[i + 1]{
//            index = i
//        }
//    }
//
//    var biggerIndex = 0
//    for j in 0..<n {
//        if arr[index] < arr[j] {
//            biggerIndex = j
//        }
//    }
//    arr.swapAt(index, biggerIndex)
//    arr = arr[0...index] + arr[(index + 1)..<arr.count].sorted()
//
//}
//print(resultSum)
