//
//  main.swift
//  math_2
//
//  Created by 안종표 on 2021/08/08.
// O
//
//while true {
//    var count = 0
//    let n = Int(readLine()!)!
//    if n == 0 {
//        break
//    }else if n == 1 {
//        print("1")
//        continue
//    }
//
//    var arr: [Int] = Array(repeating: 1, count: (2 * n) + 1 )
//    for i in 2...(2 * n) {
//        arr[i] = i
//    }
//    for j in 2...(2 * n) {
//        for k in stride(from: j + j, through: (2 * n), by: j) {
//            arr[k] = 0
//        }
//    }
//
//    for w in (n + 1)...(2 * n) {
//        if arr[w] != 0 {
//            count += 1
//        }
//    }
//    print("\(count)")
//}
