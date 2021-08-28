//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/08/26.
//

let n = Int(readLine()!)! //이동하려고 하는 채널
let m = Int(readLine()!)! //고장난 버튼의 개수
let arr = readLine()!.split(separator: " ").map{ Int($0)! } //고장난 버튼
var nowChannel = 100
var number = [0,1,2,3,4,5,6,7,8,9]

for i in 0..<arr.count {
    number.remove(at: number.firstIndex(of: arr[i])!)
}

