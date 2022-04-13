//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/13.
// 다시

//import Foundation
////[101, 900]
////[990, 99]
//print(solution([0, 0]))

//func solution(_ numbers:[Int]) -> String {
//    var check = false
//    var result = ""
//    var tempNumbers = numbers
//    tempNumbers.sort{
//        "\($0)" + "\($1)" > "\($1)" + "\($0)"
//    }
//    for i in tempNumbers{
//        if i != 0 && !check {
//            check = true
//            result = ""
//        }
//        if check{
//            result += "\(i)"
//        }else{
//            result = "0"
//        }
//    }
//    return result
//}

//func solution(_ numbers:[Int]) -> String {
//    var result = ""
//    var tempNumbers = numbers
//    tempNumbers.sort{
//        "\($0)" + "\($1)" > "\($1)" + "\($0)"
//    }
//    for i in tempNumbers{
//        result += "\(i)"
//    }
//    return String(Int(result)!)
//}
