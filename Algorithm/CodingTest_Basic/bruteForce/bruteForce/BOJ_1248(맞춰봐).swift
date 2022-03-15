//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2022/03/15.
//

//import Foundation
//let n = Int(String(readLine()!))!
//var s = Array(repeating: Array(repeating: "0", count: n), count: n)
//var count = 0
//let read = readLine()!.map{String($0)}
//for i in 0..<n{
//    for j in i..<n{
//        s[i][j] = read[count]
//        count += 1
//    }
//}
//print(s)
//var result = [Int]()
////기존에 뽑은 숫자들과, 지금 현 시점에서 뽑은 숫자들을 모두 더해가면서 입력의 조건을 만족하는 숫자인지 체크해주면서 뽑는 과정을 진행해 주었다
//func check(_ idx: Int) -> Bool{
//    var sum = 0
//    for i in stride(from: idx, through: 0, by: -1){
//        //자기자신꺼 먼저 구하고 해야되서 점점작아지도록 한것임.
//        //자기자신 A[i][j]이 A[1][1]인경우 A[1]
//        //왜 s[i][idx]에서 열값을 고정시켜놨지?
//        //일단 1. 값하나를 고정시켜놔야 2중for문을 안쓰고 찾을 수 있음
//        //2. 굳이 열값을 고정시킨 이유? 행값은 고정하면 안되나? ㅇㅇ 행값고정하면 depth를 idx로 쓸 수가 없음.
//        //애초에 depth는 내가 구한 숫자의 개수라서 행으로 구하고싶으면 result[]의 값을 다알고 있어야 가능하다. 이러면 시간초과남.
//        //그리고 직접 S를 그려보면 알겠지만, depth ~ 0까지 돌리면 딱딱 떨어지게 나옴.
//        sum += result[i]
//        if s[i][idx] == "+" && sum <= 0 {return false}
//        if s[i][idx] == "-" && sum >= 0 {return false}
//        if s[i][idx] == "0" && sum != 0 {return false}
//    }
//    return true
//}
//func dfs(_ depth: Int){
//    if depth == n{
//        print(result.map{String($0)}.joined(separator: " "))
//        exit(0)
//    }
//
//    for i in -10...10{
//        result.append(i)
//        if check(depth){
//            dfs(depth + 1)
//        }
//        result.removeLast()
//    }
//}
//dfs(0)
