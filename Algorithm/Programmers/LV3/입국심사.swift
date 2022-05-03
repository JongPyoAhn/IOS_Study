//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/05/03.
//

//import Foundation
//func solution(_ n:Int, _ times:[Int]) -> Int{
//    let time = times.sorted()
//    var left = 0
//    var right = n * time.last!
//    while left <= right{
//        let mid = (left + right) / 2
//        var people = 0
//        for i in time{
//            people += (mid / i)
//        }
//        if people >= n{
//            right = mid - 1
//        }else if people < n{
//            left = mid + 1
//        }
//    }
//    return left
//}
//print(solution(6, [7, 10]))

