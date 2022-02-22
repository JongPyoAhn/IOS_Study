//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/02/21.
// O

//출차내역이 없다면 23:59에 출차처리
//누적 주차시간이 기본시간 이하라면, 기본 요금을 청구
//누적 주차시간이 기본시간 초과하면, 기본요금에 더해서 단위시간마다 단위요금을 청구
//초과한 시간이 단위시간으로 나누어 떨어지지 않으면 올림처리

//
//import Foundation
//
////fees[0] = 기본시간(분)
////fees[1] = 기본요금(원)
////fees[2] = 단위시간(분)
////fees[3] = 단위요금(원)
////records = 시각 차량번호 내역
////차량별 주차요금
//var fees = [180, 5000, 10, 600]
//var records = ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]
//print(solution(fees, records))
//func solution(_ fees:[Int], _ records:[String]) -> [Int] {
//    let basicTime = fees[0]
//    let basicFee = fees[1]
//    let unitTime = fees[2]
//    let unitFee = fees[3]
//
//    var carNumTimeDict = [String: [Int]]()//차량번호, 입출차시간
//
//
//    for i in records{
//        let a = i.split(separator: " ").map{String($0)}
//        carNumTimeDict[a[1]] = []
//    }
//    var result = Array(repeating: 0, count: carNumTimeDict.keys.count)//아래에서 += 해줘야되서 차의 개수만큼 배열생성
//    var arr = Array(repeating: 0, count: carNumTimeDict.keys.count) //요금 계산할 분 누적시키기
//    for i in records{
//        let a = i.split(separator: " ").map{String($0)}
//        let time = a[0].split(separator: ":").map{Int(String($0))!}
//        carNumTimeDict[a[1]]!.append(time[0] * 60 + time[1])
//    }
//
//    for i in carNumTimeDict{
//        if i.value.count % 2 != 0{
//            carNumTimeDict[i.key]?.append((23 * 60) + 59)
//        }
//    }
//    var idx = 0 //result에 들어가는 순서맞추기위한인덱스
//
//    for i in carNumTimeDict.sorted(by: {$0.key < $1.key}){
//        for j in stride(from: i.value.count - 1, through: 0, by: -1) {
//            if j % 2 != 0 && j - 1 >= 0{
//                let diff = i.value[j] - i.value[j - 1]
//                arr[idx] += diff
//            }
//
//        }
//       idx += 1
//    }
//    var cal = 0
//    for i in 0..<arr.count{
//        if arr[i] <= basicTime{
//            result[i] = basicFee
//        }else{
//            var temp = false
//            cal = (arr[i] - basicTime)
//            if cal % unitTime > 0 {
//                temp = true
//            }
//            cal = cal / unitTime
//            if temp{
//                cal += 1
//            }
//            result[i] = (basicFee + (cal * unitFee))
//        }
//    }
//
//    return result
//}
