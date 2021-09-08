//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2021/08/26.
// O

//let n = Int(readLine()!)!
//var arr: [[Character]] = Array(repeating: Array(repeating: "A", count: n), count: n)
//var result = 0
//var realResult = 0
//for i in 0..<n {
//    arr[i] = readLine()!.map{Character(String($0))}
//}
//
//for i in 0..<n { //가로 바꾸기
//    for j in 0..<n{
//        if j + 1 < n, arr[i][j] != arr[i][j + 1] {
//            swap2DArray(i, j)
//            let a = 가로()
//            let b = 세로()
//            result = max(a, b)
//            swap2DArray(i, j)
//
//        }
//        realResult = max(result, realResult)
//    }
//}
//
//for i in 0..<n { //세로 바꾸기
//    for j in 0..<n{
//        if j + 1 < n, arr[j][i] != arr[j + 1][i] {
//            swap2DArray세로(j, i)
//            let a = 가로()
//            let b = 세로()
//            result = max(a, b)
//            swap2DArray세로(j, i)
//        }
//        realResult = max(result, realResult)
//    }
//}
//
//print("\(realResult)")
//
//func 가로() -> Int{ //가로 비교
//
//    var prev = 0
//    for k in 0..<n {
//        var sum = 1
//        for v in 0..<n {
//            if v + 1 < n, arr[k][v] == arr[k][v + 1] {
//                sum += 1
//            }else if v + 1 < n, arr[k][v] != arr[k][v + 1]{
//                prev = max(prev, sum) //실수한 부분
//                sum = 1
//            }
//        }
//        prev = max(prev, sum)
//    }
//    return prev
//}
//
//func 세로() -> Int{ //세로 비교
//
//    var prev = 0
//    for k in 0..<n {
//        var sum = 1
//        for v in 0..<n {
//            if v + 1 < n, arr[v][k] == arr[v + 1][k] { //실수한 부분
//                sum += 1
//            }else if v + 1 < n, arr[v][k] != arr[v + 1][k]{ //실수한 부분
//                prev = max(prev, sum) //실수한 부분
//                sum = 1
//            }
//
//        }
//
//        prev = max(prev, sum)
//    }
//    return prev
//}
//
//
//func swap2DArray(_ a: Int, _ b: Int){
//    let temp = arr[a][b]
//    arr[a][b] = arr[a][b + 1]
//    arr[a][b + 1] = temp
//}
//func swap2DArray세로(_ a: Int, _ b: Int){ //실수한 부분
//    let temp = arr[a][b]
//    arr[a][b] = arr[a + 1][b]
//    arr[a + 1][b] = temp
//}


// 내가 쓴 반례
//3
//ZCY
//ZCP
//PYZ
//답 : 2
//
//3
//CPZ
//PCP
//ZZC
//답: 3
