//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/10.
// 다시

//import Foundation
//let ns = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = ns[0]
//let s = ns[1]
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//var cnt = 0
//var subSum = [Int: Int]()
//func rightSeq(_ mid: Int, _ sum: Int){
//    
//    if mid == n{
//        if subSum[sum] == nil{
//            subSum[sum] = 1
//        }else{
//            subSum[sum]! += 1
//        }
//        
//        return
//    }
//    rightSeq(mid + 1, sum + arr[mid]) //더하는경우
//    rightSeq(mid + 1, sum) //안더하는경우
//}
//
//func leftSeq(_ st: Int, _ sum: Int){
//    if st == n/2{
//        if subSum[s - sum] != nil{
//            cnt += subSum[s - sum]!
//        }
//        
//        return
//    }
//    
//    leftSeq(st + 1, sum+arr[st])
//    leftSeq(st + 1, sum)
//}
//rightSeq(n / 2, 0)
//leftSeq(0, 0)
//if s == 0{
//    cnt -= 1
//}
//print(cnt)
