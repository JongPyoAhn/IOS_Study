//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/11.
//

//import Foundation
//var nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//var k = nk[1]
//var result = 0
//var alphabet = 0
//var wordsBit = Array(repeating: 0, count: 50)
//for i in 0..<n{
//    let a = readLine()!.map{String($0)}
//    for j in a{
//        wordsBit[i] |= 1 << (Int(Character(j).asciiValue! - Character("a").asciiValue!))
//    }
//}
//func dfs(_ depth: Int, _ start: Int){
//    var count = 0
//    if depth == k{
//        for i in 0..<n{
//            if wordsBit[i] & alphabet == wordsBit[i]{
//                count += 1
//            }
//        }
//        result = max(result, count)
//        return
//    }
//    for i in start...25{
//        if (alphabet & (1 << i)) == 0{
//            alphabet |= (1 << i)
//            dfs(depth + 1, i)
//            alphabet &= ~(1 << i)
//        }
//    }
//}
//func solution() -> Int{
//    if k < 5{
//        return 0
//    }
//    alphabet |= 1 << (Int(Character("a").asciiValue! - Character("a").asciiValue!))
//    alphabet |= 1 << (Int(Character("n").asciiValue! - Character("a").asciiValue!))
//    alphabet |= 1 << (Int(Character("t").asciiValue! - Character("a").asciiValue!))
//    alphabet |= 1 << (Int(Character("i").asciiValue! - Character("a").asciiValue!))
//    alphabet |= 1 << (Int(Character("c").asciiValue! - Character("a").asciiValue!))
//    k = k - 5
//    dfs(0, 0)
//    
//    return result
//}
//
//print(solution())


//var nk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nk[0]
//var k = nk[1]
//var alphabet = Array(repeating: false, count: 26) //A~Z 0부터 25
//var result = 0
//var words = [[String]]()
//var alphaArr = [String]()
//for _ in 0..<n{
//    let a = readLine()!.map{String($0)}
//    if a.count >= 9{
//        words.append(a)
//        let b = a[4...a.count-5]
//        for i in b{
//            alphaArr.append(i)
//        }
//    }
//}
//func dfs(_ depth: Int, _ start: Int){
//    if depth == k {
//        var count = 0
//        for i in words{
//            var temp = true
//            for j in i{
//                let word = Int(Character(j).asciiValue! - Character("a").asciiValue!)
//                if !alphabet[word]{
//                    temp = false
//                    break
//                }
//            }
//            if temp{
//                count += 1
//            }
//        }
//        result = max(result, count)
//        return
//    }
//    for i in start..<alphaArr.count{
//        let word = Int(Character(alphaArr[i]).asciiValue! - Character("a").asciiValue! )
//        if !alphabet[word]{
//            alphabet[word] = true
//            dfs(depth + 1, i)
//            alphabet[word] = false
//        }
//    }
//}
//func solution() -> Int{
//    if k < 5{
//        return 0
//    }else if k == 5{
//        return 1
//    }
//    alphabet[Int(Character("a").asciiValue! - Character("a").asciiValue!)] = true
//    alphabet[Int(Character("n").asciiValue! - Character("a").asciiValue!)] = true
//    alphabet[Int(Character("t").asciiValue! - Character("a").asciiValue!)] = true
//    alphabet[Int(Character("i").asciiValue! - Character("a").asciiValue!)] = true
//    alphabet[Int(Character("c").asciiValue! - Character("a").asciiValue!)] = true
//    k = k - 5
//    dfs(0, 0)
//
//    return result
//}
//
//print(solution())
