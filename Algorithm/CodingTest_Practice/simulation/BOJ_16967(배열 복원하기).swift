//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/13.
// O
//let hwxy = readLine()!.split(separator: " ").map{Int(String($0))!}
//let h = hwxy[0]
//let w = hwxy[1]
//let x = hwxy[2]
//let y = hwxy[3]
//var bArr = [[Int]]()
//for _ in 0..<h+x{
//    bArr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//var aArr = Array(repeating: Array(repeating: 0, count: w), count: h)
//for i in 0..<h+x{
//    for j in 0..<w+y{
//        if bArr[i][j] == 0 {continue} //둘다포함x
//        if i < h && j < w {// 두 배열 모두에 포함되면
//            aArr[i][j] = bArr[i][j]
//            if i - x >= 0 && j - y >= 0{ //
//                aArr[i][j] = abs(aArr[i - x][j - y] - bArr[i][j])
//            }
//        }else{//b에만 포함되면
//            aArr[i - x][j - y] = bArr[i][j]
//            
//        }
//    }
//}
//for i in aArr{
//    for j in i{
//        print(j, terminator: " ")
//    }
//    print()
//}


