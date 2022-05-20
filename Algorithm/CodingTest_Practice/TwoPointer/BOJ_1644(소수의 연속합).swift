//
//  File.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/09.
//


//let n = Int(String(readLine()!))!
////MARK: -- 에라토스테네스의 체
//var arr = Array(repeating: 0, count: 4000001)
//for i in 2...4000000{
//    arr[i] = i
//}
//for i in 2...4000000{
//    if arr[i] == 0{continue}
//    for j in stride(from: i + i, through: 4000000, by: i){
//        arr[j] = 0
//    }
//}
////MARK: --
//var end = 2
//var count = 0
//var sum = 0
//
//for start in stride(from: 2, through: n, by: 1){
//    if arr[start] == 0 {continue}
//    while sum < n && end <= n{
//        sum += arr[end]
//        end += 1
//    }
//    if sum == n {
//        count += 1
//    }
//    sum -= arr[start]
//}
//print(count)

