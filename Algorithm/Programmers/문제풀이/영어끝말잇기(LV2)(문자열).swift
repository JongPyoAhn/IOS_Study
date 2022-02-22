//
//  main.swift
//  ProgrammersInternShip
//
//  Created by 안종표 on 2021/11/19.
// O

//import Foundation
//func solution(_ n:Int, _ words:[String]) -> [Int] {
//    var count: Double = 0
//    var arr: [String] = []
//    var result: [Int] = []
//    var order = 0
//    
//    //배열에 하나씩 저장하면서 contains하고있으면 ..
//    for i in words{
//        order += 1
//        if order > n {
//            order = 1
//        }
//        if !arr.contains(i){
//            var temp: Character = " "
//            
//            //처음에 last가 없어서 걸리니까 if let써서 땡기자.
//            if let last = arr.last {
//                for k in last{
//                    temp = k
//                }
//            }
//            
//            arr.append(i)
//            
//            var firstIdxArr: [Character] = []
//            for v in i{
//                firstIdxArr.append(v)
//            }
//            
////            print("\(arr)")
////            print("firstIdx : \(firstIdxArr.first!)")
////            print("temp : \(temp)")
//            
//            
//            if count >= 1 && temp != firstIdxArr.first!{
//                break
//            }
//            count += 1
//            
//        }else{
//            break
//        }
//        
//        
//    }
//    if arr.count == words.count {
//        result.append(0)
//        result.append(0)
//    }else {
//        result.append(order)
//        result.append(Int(ceil((count + 1.0)/Double(n))) )
//    }
//    return result
//}
//print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))
