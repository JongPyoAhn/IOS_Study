//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/18.
// O
//print(solution([4]))
//func solution(_ answers:[Int]) -> [Int] {
//    let one = [1, 2, 3, 4, 5]
//    let two = [2, 1, 2, 3, 2, 4, 2, 5]
//    let three = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
//
//    var dict = [String:Int]()
//    dict["1"] = 0
//    dict["2"] = 0
//    dict["3"] = 0
//
//    for i in 0..<answers.count{
//        if one[i % 5] == answers[i]{
//            dict["1"]! += 1
//        }
//
//        if two[i % 8] == answers[i]{
//            dict["2"]! += 1
//        }
//
//        if three[i % 10] == answers[i]{
//            dict["3"]! += 1
//        }
//    }
//    var result = [Int]()
//    let good = dict.values.max()!
//
//    for i in dict.keys{
//        if dict[i] == good{
//            if i == "1"{
//                result.append(1)
//            }else if i == "2"{
//                result.append(2)
//            }else{
//                result.append(3)
//            }
//
//        }
//    }
//
//    result.sort()
//    return result
//}
//
