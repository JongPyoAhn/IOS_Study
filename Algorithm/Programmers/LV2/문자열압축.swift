//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/20.
// 다시

//import Foundation
//
//func solution(_ s:String) -> Int {
//    let arr = Array(s)
//    var result = Int.max
//    if arr.count == 1{
//        return 1
//    }
//    for step in 1...arr.count/2{
//        var comp = ""
//        var count = 1
//        var temp = arr[0..<step]
//        for j in stride(from: step, to: arr.count, by: step){
//            var idx = j + step
//            if j + step > arr.count - 1{
//                idx = arr.endIndex
//            }
//            if temp == arr[j..<idx]{
//                count += 1
//            }else{
//                if count >= 2{
//                    comp += "\(count)" + temp
//                }else{
//                    comp += temp
//                }
//                temp = arr[j..<idx]
//                count = 1
//            }
//        }
//        if count >= 2{
//            comp += "\(count)" + temp
//        }else{
//            comp += temp
//        }
//        result = min(result, comp.count)
//    }
//    return result
//}
//print(solution("a"))





















//    for k in 1...arr.count/2{
//        var comp = ""
//        var temp = arr[0..<k]
//        var count = 0
//        for j in stride(from: k, to: arr.count, by: k){
//            if j + k > arr.count{
//                continue
//            }
//            if temp == arr[j..<j+k]{
//                count += 1
//            }else{
//                if count >= 2{
//                    comp += "\(count)" + String(temp)
//                }else{
//                    comp += String(temp)
//                }
//                temp = arr[j..<j + k]
//                count = 1
//            }
//        }
//        if count >= 2{
//            comp += "\(count)" + String(temp)
//        }else{
//            comp += String(temp)
//        }
//        print(comp)
//        result = min(result, comp.count)
//
//    }
