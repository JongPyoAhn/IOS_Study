//
//  main.swift
//  BinarySearch
//
//  Created by 안종표 on 2021/09/02.
//


//let n = Int(readLine()!)!
//var firstArr = readLine()!.split(separator: " ").map{Int($0)!}
//
//let m = Int(readLine()!)!
//var secondArr = readLine()!.split(separator: " ").map{Int($0)!}
//
//firstArr.sort()
//
//func binarySearch(_ arr: [Int], _ target: Int) -> Int{
//    var start = 0
//    var end = arr.count - 1
//
//    while start <= end {
//        let mid = (start + end) / 2
//            if firstArr[mid] == target {
//                return 1
//            }else if firstArr[mid] > target {
//                end = mid - 1
//            }else if firstArr[mid] < target {
//                start = mid + 1
//            }
//        }
//        return 0
//}
//
//
//for i in 0..<m {
//    print(binarySearch(firstArr, secondArr[i]))
//}
