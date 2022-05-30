//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/30.
//

//import Foundation
//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var str = ""
//var prefixSum = Array(repeating: 0, count: arr.count)
//prefixSum[0] = arr[0]
//for i in stride(from: 1, to: arr.count, by: 1){
//    prefixSum[i] += (arr[i] + prefixSum[i - 1])
//}
//for _ in 0..<m{
//    let ij = readLine()!.split(separator: " ").map{Int(String($0))!}
//    var sum = 0
//    let i = ij[0] - 1
//    let j = ij[1] - 1
//    if i != 0 {
//        sum = prefixSum[j] - prefixSum[i - 1]
//    }else{
//        sum = prefixSum[j]
//    }
//    str += "\(sum)\n"
//
//}
//print(str)
