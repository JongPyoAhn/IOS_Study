//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/23.
//

//let n = Int(String(readLine()!))!
//var nArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let m = Int(String(readLine()!))!
//var mArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//nArr.sort()
//var result = [Int]()
//func lowerBound(_ target: Int) -> Int{
//    var start = 0
//    var end = n - 1
//    while start <= end{
//        let mid = (start + end) / 2
//        if target <= nArr[mid]{
//            end = mid - 1
//        }else{
//            start = mid + 1
//        }
//    }
//    return start
//}
//
//func upperBound(_ target: Int) -> Int{
//    var start = 0
//    var end = n - 1
//    while start <= end{
//        let mid = (start + end) / 2
//        if target < nArr[mid]{
//            end = mid - 1
//        }else{
//            start = mid + 1
//        }
//    }
//    return start
//}
//for i in 0..<m{
//    let low = lowerBound(mArr[i])
//    let high = upperBound(mArr[i])
//    result.append(high - low)
//}
//print(result.map{String($0)}.joined(separator: " "))

