//
//  main.swift
//  bruteForce
//
//  Created by 안종표 on 2022/04/11.
//




//var t = Int(String(readLine()!))!
//for _ in 0..<t {
//    let mnxy = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let m = mnxy[0]
//    let n = mnxy[1]
//    let x = mnxy[2]
//    let y = mnxy[3]
//
//    var curY = (x - 1) % n + 1
//    var count = x
//    let least = lcm(m, n)
//    var result = -1
//
//    while count < least{
//        if curY == y{
//            result = count
//            break
//        }
//        curY = (curY + m - 1) % n + 1
//        count += m
//    }
//    print(result)
//}
//func gcd(a: Int, b: Int) -> Int{
//    var curA = a
//    var curB = b
//    while curB != 0{
//        let r = curA % curB
//        curA = curB
//        curB = r
//    }
//    return curA
//}
//func lcm(_ a: Int,_ b: Int) -> Int{
//    return a * b / gcd(a: a, b: b)
//}
