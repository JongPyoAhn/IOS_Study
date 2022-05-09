//
//  File.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/09.
//

//import Foundation
//let n = Int(String(readLine()!))!
//var arr = Array(repeating: 0, count: 4000001)
//func isPrime(_ number: Int){
//    for i in 2...number{
//        arr[i] = i
//    }
//    for i in 2...number{
//        if arr[i] == 0{continue}
//        for j in stride(from: i+i, through: number, by: i){
//            arr[j] = 0
//        }
//    }
//}
//
//isPrime(4000000)
////print(arr)
//var end = 1
//var sum = 0
//var count = 0
//
//for start in 1...n{
//    if arr[start] == 0{
//        continue
//    }
//    while sum < n && end <= n {
//        
//        if arr[end] != 0{
//            sum += end
//        }
//        end += 1
//    }
//    if sum == n {
//        count += 1
////        print("start : \(start), end: \(end)")
////        print(count)
//    }
//    sum -= arr[start]
//}
//print(count)
