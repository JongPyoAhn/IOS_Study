//
//  main.swift
//  ProgrammersInternShip
//
//  Created by 안종표 on 2021/11/18.
// O

//import Foundation
//func solution(_ skill:String, _ skill_trees:[String]) -> Int {
//    var skillSplit:[Character] = []
//    for i in skill{
//        skillSplit.append(i)
//    }
////    print(skillSplit)
//    var before = 0
//    var isSkill = true
//    var count = 0
//    var beforeSkill: Character = skillSplit[0]
//    for i in skill_trees {
//        var skillTree: [Character] = []
//        for k in i{
//            skillTree.append(k)
//        }
////        print(skillTree)
//        for j in skillSplit{
//            if let index = skillTree.firstIndex(of: j){
//                if before <= index{
//                    before = index
//                    if !skillTree.contains(beforeSkill){
//                        isSkill = false
//                    }
//                    beforeSkill = j
//                }else if before > index{
//                    isSkill = false
//                    break
//                }
//            }else {
//                beforeSkill = j
//            }
//        }
//        if isSkill{
//            count += 1
//        }
//
//        isSkill = true
//        before = 0
//        beforeSkill = skillSplit[0]
//    }
//
//    return count
//}
//print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]))


