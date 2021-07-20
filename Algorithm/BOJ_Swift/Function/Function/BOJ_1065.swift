////
////  main.swift
////  Function
////
////  Created by 안종표 on 2021/07/20.
////
//
//let N = Int(readLine()!)!
//var count = 0
//var isHansoo = true
//for i in 1...N {
//
//    var prev = Int.max
//    var now = Int.max
//    var diff = Int.max
//    var num = i
//    while num != 0 {
//        let namerge = num % 10
//        now = namerge
//        if prev == Int.max {
//            prev = now
//        }else {
//            if diff == Int.max{
//                diff = now - prev
//            }else {
//                let tdiff = now - prev
//                if tdiff != diff {
//                    isHansoo = false
//                    break
//                }else{
//                    isHansoo = true
//                }
//            }
//        }
//     prev = now
//     num = num / 10
//    }
//    if isHansoo {
//        count = count + 1
//    }
//}
//print("\(count)")
//
