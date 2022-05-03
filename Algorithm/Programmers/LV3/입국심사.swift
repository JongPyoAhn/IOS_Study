//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/05/03.
// 다시

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
//        if people >= n{//많거나 같을 경우에는 시간이 충분했던 것이므로 주어진 시간을 줄이고
//            right = mid - 1
//        }else if people < n{
//            left = mid + 1
//        }
//    }
//    return left
//}
//print(solution(6, [7, 10]))

