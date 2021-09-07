//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/08/26.
//

//let n = Int(readLine()!)!
//var arr = readLine()!.split(separator: " ").map{Int($0)!}
//
//if Array(1...n).reversed() == arr{
//    print("-1")
//}else {
//    var idx = 0
//    for i in 0..<n{
//        if i + 1 < n, arr[i] < arr[i + 1] {
//            idx = i
//        }
//    }
//
//    var biggerIndex = 0
//    for j in idx..<n {
//        if arr[idx] < arr[j] {
//            biggerIndex = j
//        }
//    }
//    arr.swapAt(idx, biggerIndex)
//    arr = arr[...idx] + arr[(idx + 1)...].sorted()
//    print(arr.map{String($0)}.joined(separator: " "))
//}

