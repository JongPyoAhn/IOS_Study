//
//  main.swift
//  recursive_function
//
//  Created by 안종표 on 2021/08/02.
//

//let n = Int(String(readLine()!))!
//var star = ""
//for i in 0..<n {
//    for j in 0..<n {
//        printStar(n,i,j)
//    }
//    star += "\n"
//}
//print("\(star)")
//func printStar(_ n: Int, _ i: Int, _ j: Int) {
//    if (i / n) % 3 == 1 && (j / n) % 3 == 1 {
//        star += " "
//    }else {
//        if n / 3 == 0 {
//            star += "*"
//        }else {
//            printStar(n / 3, i, j)
//        }
//    }
//}

//let n = Int(String(readLine()!))!
//var arr: [[String]] = Array(repeating: Array(repeating: " ", count: n), count: n)
//recursiveStar(n,0,0)
//for i in 0..<n {
//    for j in 0..<n {
//        print("\(arr[j][i])",terminator: "")
//    }
//    print("")
//}
//
//
//func printStar(_ x: Int, _ y: Int) {
//    arr[x][y] = "*"
//    arr[x+1][y] = "*"
//    arr[x+2][y] = "*"
//
//    arr[x][y+1] = "*"
//    arr[x+2][y+1] = "*"
//
//    arr[x][y+2] = "*"
//    arr[x+1][y+2] = "*"
//    arr[x+2][y+2] = "*"
//}
//
//func recursiveStar(_ n: Int, _ x: Int, _ y: Int){
//    if n == 3 {
//        printStar(x, y)
//    }else {
//        recursiveStar(n / 3, x, y + (n / 3))
//        recursiveStar(n / 3, x + (n / 3), y + (n / 3))
//        recursiveStar(n / 3, x + (n / 6), y + (n / 3))
//
//        recursiveStar(n / 3, x, y + (n / 6))
//        recursiveStar(n / 3, x + (n / 6), y + (n / 6))
//
//        recursiveStar(n / 3, x, y + (n / 9))
//        recursiveStar(n / 3, x + (n / 3), y + (n / 9))
//        recursiveStar(n / 3, x + (n / 6), y + (n / 9))
//
//    }
//
//
//
//}


