//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/05/03.
// 다시


//import Foundation
//
//func solution(_ p:String) -> String {
//    func isCorrect(_ p: String) -> Bool{
//        var arr = [String]()
//        for i in p{
//            if i == "("{
//                arr.append("(")
//            }else{
//                if arr.count == 0{
//                    return false
//                }else{
//                    arr.removeLast()
//                }
//            }
//        }
//        return true
//    }
//    func seperate(_ p: String) -> (String, String){
//        var leftCount = 0
//        var rightCount = 0
//        let pArr = Array(p)
//        var u = ""
//        var v = ""
//        for i in 0..<pArr.count{
//            if pArr[i] == "("{
//                leftCount += 1
//            }else{
//                rightCount += 1
//            }
//            if leftCount == rightCount{
//                u = String(pArr[0...i])
//                v = String(pArr[i+1..<p.count])
//                break
//            }
//        }
//        return (u, v)
//    }
//    func recursive(_ p: String) -> String{
//        var result = ""
//        if p.count == 0 {return ""}
//        var (u,v) = seperate(p)
//        let uArr = Array(u)
//        var temp = ""
//        if isCorrect(u){
//            result = u + recursive(v)
//        }else{
//            temp += "("
//            temp += recursive(v)
//            temp += ")"
//            
//            u = String(uArr[1..<uArr.count-1])
//            for i in u{
//                if i == "("{
//                    temp += ")"
//                }else{
//                    temp += "("
//                }
//            }
//            result = temp
//        }
//        
//        return result
//    }
//    
//    var answer = ""
//    if isCorrect(p){
//        return p
//    }
//    answer = recursive(p)
//    return answer
//}
//print(solution("()))((()"))
