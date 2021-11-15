//
//  min.swift
//  DP
//
//  Created by 안종표 on 2021/11/13.
//

//let a = Int(String(readLine()!))!
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var dp_1 = Array(repeating: 1, count: 1001)
//var dp_2 = Array(repeating: 1, count: 1001)
//var result: [Int] = []
//
//for i in stride(from: 1, through: a, by: 1){
//    for j in 1...i{
//        if arr[i - 1] > arr[j - 1]{
//            dp_1[i] = max(dp_1[i], dp_1[j] + 1)
//        }
//    }
//}
//
//
//for i in stride(from: a, through: 1, by: -1){
//    for j in stride(from: a, through: i, by: -1){
//        if arr[i - 1] > arr[j - 1]{
//            dp_2[i] = max(dp_2[i], dp_2[j] + 1)
//        }
//    }
//}
//for i in 1...a{
//    result.append(dp_1[i] + dp_2[i])
//}
//print(result.max()! - 1)


//https://st-lab.tistory.com/136
