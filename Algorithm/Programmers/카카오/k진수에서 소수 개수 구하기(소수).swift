//
//  k진수에서 소수 개수 구하기.swift
//  Programmers
//
//  Created by 안종표 on 2022/02/25.
// 다시

//import Foundation
//
//let n = 1000000
//let k = 6
//print(solution(n, k))
//func solution(_ n:Int, _ k:Int) -> Int {
//
//    func isPrime(_ num: Int) -> Bool{
//        for j in stride(from: 2, through: Int(sqrt(Double(num))), by: 1){
//            if num % j == 0 {
//                return false
//            }
//        }
//        return true
//    }
//    //k진수로 변경
//    let jinsu = String(n, radix: k)
//    let arr = Array(jinsu)
//    var resultArr = [Character]()
//    for i in arr{
//        if i != "0"{
//            resultArr.append(i)
//        }else{
//            resultArr.append(" ")
//        }
//    }
//    let resultArrString = String(resultArr)
//    let a = resultArrString.split(separator: " ").map{Int(String($0))!}
//    var count = 0
//
//    for i in a{
//        if i != 1{
//            if isPrime(i){
//                count += 1
//            }
//        }
//    }
//
//    return count
//}
