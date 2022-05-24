//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/24.
// 다시

//import Foundation
//let nc = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nc[0]
//let c = nc[1]
//
//var arr = [Int]()
//for _ in 0..<n{
//    arr.append(Int(String(readLine()!))!)
//}
//arr.sort()
//
//let maxArr = arr[n - 1]
//let minArr = arr[0]
//var start = 1
//var end = maxArr - minArr
//var result = 0
//
//while start <= end{
//    var count = 1 //설치 할 수 있는 공유기 수
//    let mid = (start + end) / 2
//    var prevHome = arr[0]
//    for i in 1..<n{
//        let currentHome = arr[i]
//        if currentHome - prevHome >= mid{ //현재구한간격(mid)보다 크거나 같으면 공유기 설치 가능
//            count += 1
//            prevHome = currentHome
//        }
//    }
//
//    if count < c{
//        end = mid - 1
//    }else{
//        start = mid + 1
//    }
//}
//print(start - 1)
//
