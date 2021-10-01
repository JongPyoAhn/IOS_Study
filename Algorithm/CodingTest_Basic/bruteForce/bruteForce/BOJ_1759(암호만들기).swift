//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/10/01.
// O

//let LC = readLine()!.split(separator: " ").map{Int(String($0))!}
//let L = LC[0]
//let C = LC[1]
//let arr = readLine()!.split(separator: " ").map{String($0)}.sorted()
//let vowel = ["a","e","i","o","u"]
//let consonant = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
//var depth = 0
//var visited: [Bool] = Array(repeating: false, count: C)
//var result: [String] = []
//
//func dfs(_ depth: Int, _ start: Int){
//    if depth == L{
//        var isprinted = false
//        for i in vowel{
//            if result.contains(i){
//                isprinted = true
//            }
//        }
//        var count = 0
//        for j in consonant{
//            if result.contains(j){
//                count += 1
//            }
//        }
//        if count >= 2 && isprinted{
//            print(result.joined(separator: ""))
//        }
//        return
//    }
//
//    for i in start..<C{
//        if !visited[i] {
//            visited[i] = true
//            result.append(arr[i])
//            dfs(depth + 1, i)
//            visited[i] = false
//            result.removeLast()
//        }
//    }
//
//}
//
//dfs(depth, 0)


