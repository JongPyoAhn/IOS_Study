//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/12.
// O

//import Foundation
//print(solution([1,1,9,1,1,1], 0))
//func solution(_ priorities:[Int], _ location:Int) -> Int {
//    var result = 0
//    var queue = priorities
//    var identy = [String]()
//    for i in 0..<queue.count{
//        identy.append("\(i)")
//    }
//    let wantFind = identy[location]
//    var count = 0
//    while !queue.isEmpty{
//        
//        //뒤로갔는지 체크
//        var check = false
//        for j in stride(from: 1, to: queue.count, by: 1){
//            if queue[0] < queue[j]{
//                let a = queue.removeFirst()
//                queue.append(a)
//                let b = identy.removeFirst()
//                identy.append(b)
//                check = true
//                //뒤로 갔으면 더이상 반복할 필요 없음
//                break
//            }
//        }
//        //뒤로가지 않았으면 자기자신이 최우선순위
//        if !check{
//            count += 1
//            queue.removeFirst()
//            let c = identy.removeFirst()
//            if c == wantFind {
//                result = count
//                break
//            }
//            
//        }
//    }
//    return result
//}
