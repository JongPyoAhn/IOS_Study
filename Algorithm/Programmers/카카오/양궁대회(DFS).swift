//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/02/22.
// O
//import Foundation

//어피치가 n발 쏜 후 라이언이 n발
//점수 계산
//만약, k점을 어피치가 a발 맞추고 라이언이 b밞 맞췃는데 a > b이면 어피치가 k점을 가져감.
//반대로, b > a 이면 라이언이 가져감, 근데 a = b 이면 어피치가 가져감.
//k점을 여러번 맞혀도 k점만 가져감 a = b = 0 인 경우 둘 다 못가져감
//최종점수가 같을경우 어피치가 우승자
//라이언이 어피치를 가장 큰 점수차이로 이기려고한다.
//라이언이 우승할 수 없는경우 (지거나 비기는경우) - 1리턴
//낮은점수부터 쏘면됨
//let n = 10
//let info = [0,0,0,0,0,0,0,0,3,4,3]
//print(solution(n, info))
//func solution(_ n:Int, _ info:[Int]) -> [Int] {
//    var result = Array(repeating: 0, count: 11)
//    var arr = Array(repeating: 0, count: 11)
//    var lionSum = 0
//    var appeachSum = 0
//    var temp = 0 //점수차이 계산
//    var lionWin = false
//    func dfs(_ depth: Int, _ start: Int){
//        if depth == n{
//            lionSum = 0
//            appeachSum = 0
//            for i in 0...10{
//                if arr[i] == 0 && info[i] == 0 {
//                    continue
//                }
//                if info[i] < arr[i]{
//                    lionSum += 10 - i
//                }else{
//                    appeachSum += 10 - i
//                }
//            }
//            if lionSum > appeachSum{
//                lionWin = true
//                if lionSum - appeachSum > temp{
//                    result = arr
//                    temp = lionSum - appeachSum
//                }
//            }
//            return
//        }
//
//        for i in start...10{
//            arr[10 - i] += 1
//            dfs(depth + 1, i)
//            arr[10 - i] -= 1
//        }
//    }
//    dfs(0, 0)
//    if !lionWin{
//        result = [-1]
//    }
//
//
//
//
//    return result
//}
