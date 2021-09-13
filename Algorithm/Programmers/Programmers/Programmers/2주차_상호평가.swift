//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2021/09/13.
//

//import Foundation
//var scroes = [[100,90,98,88,65],[50,45,99,85,77],[47,88,95,80,67],[61,57,100,80,65],[24,90,94,75,65]]
//print(solution(scroes))
//func solution(_ scores:[[Int]]) -> String {
//    var hakjum: [Character] = []
//    var sum = 0
//    var count = 0
//    var avg = 0
//    var newScore: [[Int]] = Array(repeating: Array(repeating: 0, count: scores.count), count: scores.count)
//
//    for i in 0..<scores.count{
//        for j in 0..<scores.count{
//            newScore[i][j] = scores[j][i]
//        }
//    }
//
//        for i in 0..<newScore.count{
//            for j in 0..<newScore.count{
//                //자기자신이 먹인 점수일 때, 유일한최고점 또는 유일한 최저점일 시 점수 제외
//                if i == j, j == newScore[i].firstIndex(of: newScore[i].max()!) && j == newScore[i].lastIndex(of: newScore[i].max()!){
//                    continue
//                }
//                else if i == j, j == newScore[i].firstIndex(of: newScore[i].min()!) && j == newScore[i].lastIndex(of: newScore[i].min()!) {
//                    continue
//                }else {
//                    sum += newScore[i][j]
//                    count += 1
//                }
//
//            }
//
//            avg = sum / count
//            if avg >= 90 {
//                hakjum.append("A")
//            }else if avg >= 80{
//                hakjum.append("B")
//            }else if avg >= 70{
//                hakjum.append("C")
//            }else if avg >= 50{
//                hakjum.append("D")
//            }else{
//                hakjum.append("F")
//            }
//           count = 0
//           sum = 0
//        }
//
//    return "\(hakjum.map{String($0)}.joined(separator: ""))"
//}
