//
//  BOJ3052.swift
//  배열
//
//  Created by 안종표 on 2021/07/02.
//  Set을 쓸줄아는지 묻는 문제

import Foundation

var s: Set<Int> = []
var i = 0
var count = 0
while i < 10 {
    s.insert(Int(readLine()!)! % 42)
    i = i + 1
}
print(s.count)


