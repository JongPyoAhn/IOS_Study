//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/16.
// 다시해보자.

//let nmr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmr[0]
//let m = nmr[1]
//let r = nmr[2]
//var arr = [[Int]]()
//let groupCnt = min(n, m) / 2
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//var raw = n
//var col = m
//func rotate(_ i: Int){
//    let length = (raw - 1) * 2  + (col - 1) * 2
//    var idx = 0
//    var row = Array(repeating: 0, count: length)
//    for y in i..<m-i{
//        let inIdx: Int = {
//            if (idx - r) % length < 0{
//                return ((idx - r) % length) + length
//            }
//            else{
//                return ((idx - r) % length)
//            }
//        }()
//        row[inIdx] = arr[i][y]
//        idx += 1
//    }
//    for x in i+1..<n-i{
//        let inIdx: Int = {
//            if (idx - r) % length < 0{
//                return ((idx - r) % length) + length
//            }
//            else{
//                return ((idx - r) % length)
//            }
//        }()
//        row[inIdx] = arr[x][m - i - 1]
//        idx += 1
//    }
//
//    for y in stride(from: m-i-2, to: i-1, by: -1){
//        let inIdx: Int = {
//            if (idx - r) % length < 0{
//                return ((idx - r) % length) + length
//            }
//            else{
//                return ((idx - r) % length)
//            }
//        }()
//        row[inIdx] = arr[n - i - 1][y]
//        idx += 1
//    }
//
//    for x in stride(from: n - i - 2, to: i-1, by: -1){
//        let inIdx: Int = {
//            if (idx - r) % length < 0{
//                return ((idx - r) % length) + length
//            }
//            else{
//                return ((idx - r) % length)
//            }
//        }()
//        row[inIdx] = arr[x][i]
//        idx += 1
//    }
//
//    idx = 0
//    for y in i..<m-i{
//        arr[i][y] = row[idx]
//        idx += 1
//    }
//    for x in i+1..<n-i{
//        arr[x][m - i - 1] = row[idx]
//        idx += 1
//    }
//    for y in stride(from: m - i - 2, to: i - 1, by: -1){
//        arr[n - i - 1][y] = row[idx]
//        idx += 1
//    }
//    for x in stride(from: n - i - 2, to: i, by: -1){
//        arr[x][i] = row[idx]
//        idx += 1
//    }
//
//}
//
//for i in 0..<groupCnt{
//    rotate(i)
//    raw -= 2
//    col -= 2
//}
//var str = ""
//for i in arr{
//    for j in i{
//        str += "\(j) "
//    }
//    str += "\n"
//}
//print(str)

//https://westmino.tistory.com/58

