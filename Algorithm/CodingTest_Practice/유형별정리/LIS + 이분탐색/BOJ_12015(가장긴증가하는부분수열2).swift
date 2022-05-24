//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/24.
// 다시
//https://st-lab.tistory.com/285
//let n = Int(String(readLine()!))!
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var Lis = [Int]()
//Lis.append(arr[0])
//for i in 1..<n{
//    if Lis.last! < arr[i]{
//        Lis.append(arr[i])
//    }else{
//        var start = 0
//        var end = Lis.count - 1
//        while start <= end{
//            let mid = (start + end) / 2
//            if Lis[mid] < arr[i]{
//                start = mid + 1
//            }else{
//                end = mid - 1
//            }
//        }
//        Lis[start] = arr[i]
//    }
//}
//print(Lis.count)
