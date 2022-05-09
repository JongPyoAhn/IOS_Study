//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/05/07.
//

//import Foundation
//
//func solution(_ survey:[String], _ choices:[Int]) -> String {
//    //RT, CF, JM, AN
//    let variation = ["R", "T", "C", "F", "J", "M", "A", "N"]
//    let tupleVariation = [("R", "T"), ("C","F"), ("J", "M"), ("A", "N")]
//    var dict = [String: Int]()
//    for i in variation{
//        dict[i] = 0
//    }
//    
//    for i in 0..<survey.count{
//        let str = Array(survey[i]).map{String($0)}
//        if str[0] < str[1]{
//            if choices[i] - 4 > 0{
//                dict[str[1]]! += choices[i] - 4
//            }else if choices[i] - 4 < 0 {
//                dict[str[0]]! += 4 - choices[i]
//            }
//        }else{
//            if choices[i] - 4 > 0{
//                dict[str[1]]! += choices[i] - 4
//            }else if choices[i] - 4 < 0 {
//                dict[str[0]]! += 4 - choices[i]
//            }
//        }
//    }
//    var result = ""
//    for i in tupleVariation{
//        if dict[i.0]! > dict[i.1]!{
//            result += "\(i.0)"
//        }else if dict[i.0]! < dict[i.1]!{
//            result += "\(i.1)"
//        }else{//같은경우 사전순으로 앞에꺼
//            result += "\(i.0)"
//        }
//    }
//    return result
//}
//print(solution(["TR", "RT", "TR"], [7, 1, 3]))
