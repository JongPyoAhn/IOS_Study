//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/30.
// 다시

//import Foundation
//let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//let k = nk[1]
//
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var preFix = Array(repeating: 0, count: arr.count)
//preFix[0] = arr[0]
//for i in stride(from: 1, to: arr.count, by: 1){
//    preFix[i] += (arr[i] + preFix[i - 1])
//}
//
//var result = Int.max * -1
//for i in 0..<preFix.count{
//    var sum = 0
//    if i - k < -1 {continue}
//    if i - k == -1{
//        sum = preFix[i]
//    }else{
//        sum = preFix[i] - preFix[i - k]
//    }
////    print(sum)
//    result = max(result, sum)
//}
//print(result)
