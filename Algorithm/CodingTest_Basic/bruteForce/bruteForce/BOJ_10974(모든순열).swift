//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/09/24.
// O


//let n = Int(readLine()!)!
//var sum = 1
//var arr: [Int] = []
//var result: [Int] = []
//
//factorial(n)
//for i in 0..<n{
//    arr.append(i + 1)
//}
//
//for _ in 0..<sum{
//    print(arr.map{String($0)}.joined(separator: " "))
//    var index = 0
//    for i in 0..<n {
//        if i + 1 < n, arr[i] < arr[i + 1] {
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
//
//
//    arr.swapAt(index, biggerIndex)
//    arr = arr[0...index] + arr[index+1..<n].sorted()
//}
//
//
//func factorial(_ n: Int) {
//    if n == 1{
//        return
//    }
//    sum = n * sum
//    factorial(n - 1)
//}
