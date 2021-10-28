//
//  main.swift
//  BinarySearch
//
//  Created by 안종표 on 2021/10/28.
//

import Foundation
let n = Int(readLine()!)!
var nArr = readLine()!.split(separator: " ").map{ Int(String($0))! }
let m = Int(readLine()!)!
let mArr = readLine()!.split(separator: " ").map{Int(String($0))!}

var dict = [Int:Int]()

for i in nArr {
    if dict.keys.contains(i) {
        dict[i]! += 1
    }else {
        dict[i] = 1
    }
}

for j in mArr {
    if dict.keys.contains(j){
        print(dict[j]!, terminator: " ")
    }else {
        print(0, terminator: " ")
    }
}

