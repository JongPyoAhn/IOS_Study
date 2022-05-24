//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/23.
// 다시

//let n = Int(String(readLine()!))!
//var nArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let m = Int(String(readLine()!))!
//var mArr = readLine()!.split(separator: " ").map{Int(String($0))!}
//nArr.sort()
//var result = ""
//for i in 0..<m{
//    var isOK = false
//    var start = 0
//    var end = n - 1
//    while start <= end{
//        let mid = (start + end) / 2
//        if mArr[i] == nArr[mid]{
//            isOK = true
//            break
//        }
//        if mArr[i] > nArr[mid]{
//            start = mid + 1
//        }else if mArr[i] < nArr[mid]{
//            end = mid - 1
//        }
//    }
//    if isOK{
//        result += "1\n"
//    }else{
//        result += "0\n"
//    }
//}
//print(result)
