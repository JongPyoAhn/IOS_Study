//
//  main.swift
//  Review
//
//  Created by 안종표 on 2021/09/04.
// O

//import Foundation
//
//let n = Int(readLine()!)!
//var nArr = readLine()!.split(separator: " ").map{Int($0)!}
//let m = Int(readLine()!)!
//let mArr = readLine()!.split(separator: " ").map{Int($0)!}
//
//nArr.sort()
//
//func binarySearch(_ nArr: [Int], number: Int) -> Int{
//    var start = 0
//    var end = nArr.count - 1
//    
//    while true{
//        let mid = (start + end) / 2
//        if nArr[mid] == number {
//            return 1
//        }else if nArr[mid] < number {
//            start = mid + 1
//        }else if nArr[mid] > number {
//            end = mid - 1
//        }
//        
//        if start > end {
//            break
//        }
//    }
//    return 0
//}
//for i in 0..<m{
//    print("\(binarySearch(nArr, number: mArr[i]))")
//}
