//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/24.
//

import Foundation

let nc = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nc[0]
let c = nc[1]

var arr = [Int]()
for _ in 0..<n{
    arr.append(Int(String(readLine()!))!)
}
arr.sort()
