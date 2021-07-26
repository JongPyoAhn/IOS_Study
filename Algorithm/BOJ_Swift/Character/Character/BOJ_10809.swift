//
//  main.swift
//  Character
//
//  Created by 안종표 on 2021/07/26.
//
//range()의 경우 해당 단어의 Index(소문자위치) ~ Index(대문자위치) 까지 구함.
//range.lowerBound는 소문자를 꺼내라는 소리.

//
//import Foundation
//let s = String(readLine()!)
//
//for i in Character("a").asciiValue!...Character("z").asciiValue! {
//    if let range = s.range(of:String(UnicodeScalar(i))) {
//        let s = s.distance(from: s.startIndex, to: range.lowerBound)
//        print("\(s)",terminator: " ")
//    }else{
//        print("-1", terminator: " ")
//    }
//}
//print("")
