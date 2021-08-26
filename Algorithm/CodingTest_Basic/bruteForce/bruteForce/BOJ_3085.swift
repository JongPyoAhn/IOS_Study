//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/08/26.
// X

//let n = Int(readLine()!)!
//var arr: [[Character]] = Array(repeating: Array(repeating: "A", count: n), count: n)
//var resultArr: [Int] = []
//var max = 0
//
//
//for i in 0..<n {
//    var j = 0
//    let a = String(readLine()!)
//    for k in a {
//        arr[i][j] = k
//        j += 1
//    }
//}
//
//
//for i in 0..<n{
//    if i+1 >= n {
//        break
//    }
//    if arr[i] != arr[i+1] {
//        break
//    }else {
//        max = n
//    }
//}
//
//for i in 0..<n {
//    for j in 0..<n {
//        if j + 1 >= n {
//            break
//        }
//        resultArr = Array(repeating: 1, count: n * 2)
//        if arr[i][j] != arr[i][j+1] {
//            let temp = arr[i][j]
//            arr[i][j] = arr[i][j+1]
//            arr[i][j+1] = temp
//
//            height()
//            width()
//
//            arr[i][j+1] = arr[i][j]
//            arr[i][j] = temp
//        }
//    }
//}
//
//for i in 0..<n {
//    for j in 0..<n {
//        if i + 1 >= n {
//            break
//        }
//        resultArr = Array(repeating: 1, count: n * 2)
//        if arr[j][i] != arr[j][i+1] {
//            let temp = arr[j][i]
//            arr[j][i] = arr[j][i+1]
//            arr[j][i+1] = temp
//
//            height()
//            width()
//
//            arr[j][i+1] = arr[j][i]
//            arr[j][i] = temp
//        }
//    }
//}
//
//
//print("\(max)")
//
//
//func height() {
//    for k in 0..<n {
//        for v in 0..<n {
//            if v + 1 >= n {
//                break
//            }
//
//            if arr[v][k] == arr[v + 1][k] {
//                resultArr[k] += 1
//            }else {
//                break
//            }
//        }
//    }
//    max = (resultArr.max()! >= max ? resultArr.max()! : max )
//}
//
//func width() {
//    for k in 0..<n {
//        for v in 0..<n {
//            if v + 1 >= n {
//                break
//            }
//            if arr[k][v] == arr[k][v + 1] {
//                resultArr[n+k] += 1
//            }else {
//                break
//            }
//        }
//    }
//    max = (resultArr.max()! >= max ? resultArr.max()! : max )
//}
