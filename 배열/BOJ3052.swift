//
//  BOJ3052.swift
//  
//
//  Created by 안종표 on 2021/07/02.
//

import Foundation

var s: Set<Int> = []
var i = 0
var count = 0
while i < 10 {
    s.insert(Int(readLine()!)! % 42)
    i = i + 1
}
print(s.count)
