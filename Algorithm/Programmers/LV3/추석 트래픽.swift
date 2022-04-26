//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/26.
// 다시

//import Foundation
//func solution(_ lines:[String]) -> Int {
//    var startTime = [Int]()
//    var endTime = [Int]()
//    var result = 0
//    for i in lines{
//        var sp = i.split(separator: " ").map{String($0)}//문자열 분해
//        let time = sp[1].split(separator: ":") //시간 문자열 분해
//        let hour = Int(time[0])! * 3600 //시간 -> 초
//        let min = Int(time[1])! * 60 //분 -> 초
//        
//        let secTime = time[2].split(separator: ".").map{Int(String($0))!} //초와 밀리초 분해
//        let sec = secTime[0] //초
//        let miliSec = secTime[1] //밀리초
//        
//        let obtain = (hour + min + sec) * 1000 + miliSec //밀리초로 변경한 시간값
//        
//        endTime.append(obtain)
//        sp[2].removeLast() //2.0s와 같이 되어있어서 s를 제거.
//        
//        let duration = Int(Double(sp[2])! * 1000) //시작 시간을 구하기위해 지속시간을 구함
//        startTime.append(obtain - duration + 1) //끝시간 - 지속시간 + 1
//    }
//    print(startTime)
//    print(endTime)
//    for i in 0..<lines.count{
//        var cnt = 0
//        for j in stride(from: i, to: lines.count, by: 1){
//
//            if endTime[i] > startTime[j] - 1000{
//                print("endTime : \(endTime[i]) startTime : \(startTime[i])")
//                cnt += 1
//            }
//        }
//        result = max(result, cnt)
//    }
//    return result
//}
//
//print(solution([
//    "2016-09-15 01:00:04.001 2.0s",
//    "2016-09-15 01:00:07.000 2s"
//    ]))
