//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/07.
//

//let n = Int(readLine()!)!
//var arr = readLine()!.split(separator: " ").map{Int($0)!}
//var temp: Int = 0
//var bigTemp = 0
//
//if arr.sorted() == arr {
//    print("-1")
//}else {
//    for i in 0..<arr.count{
//        if i + 1 < arr.count, arr[i] > arr[i + 1]{
//            temp = i
//        }
//    }
//
//    for i in (temp + 1)..<arr.count {
//        if arr[temp] > arr[i] {
//            bigTemp = i
//        }
//    }
//
//    arr.swapAt(temp, bigTemp)
//    arr[(temp + 1)..<arr.count].sort(by: >)
//
//    print(arr.map{String($0)}.joined(separator: " "))
//}
