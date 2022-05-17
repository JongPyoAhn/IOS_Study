//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/14.
//

//import Foundation
//let nr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nr[0]
//let r = nr[1]
//var arr = [[Int]]()
//let row = (1 << n)
//for _ in 0..<row{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//for _ in 0..<r{
//    let kl = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let k = kl[0]
//    let l = kl[1]
//    let subSize = (1 << l)
//    
//    
//    if k >= 1 && k <= 4{
//       
//        for i in stride(from: 0, to: row, by: subSize){
//            for j in stride(from: 0, to: row, by: subSize){
//                var temp = Array(repeating: Array(repeating: 0, count: subSize), count: subSize)
//                for x in 0..<subSize{
//                    for y in 0..<subSize{
//                        let nx = i + x
//                        let ny = j + y
//                        temp[x][y] = arr[nx][ny]
//                    }
//                }
//                if k == 1{
//                    temp = r1(temp)
//                }else if k == 2{
//                    temp = r2(temp)
//                }else if k == 3{
//                    temp = r3(temp)
//                }else if k == 4{
//                    temp = r4(temp)
//                }
//                
//                
//                for x in 0..<subSize{
//                    for y in 0..<subSize{
//                        let nx = x + i
//                        let ny = y + j
//                        arr[nx][ny] = temp[x][y]
//                    }
//                }
//            }
//            
//            
//        }
//    }
//    if k == 5{
//        arr = r5(arr, l)
//    }else if k == 6{
//        arr = r6(arr, l)
//    }else if k == 7{
//        arr = r7(arr, l)
//    }else if k == 8{
//        arr = r8(arr, l)
//    }
//}
//func r1(_ arr: [[Int]]) -> [[Int]]{
//    var tempArr = Array(repeating: Array(repeating: 0, count: arr.count), count: arr.count)
//    for i in 0..<arr.count{
//        for j in 0..<arr.count{
//            tempArr[i][j] = arr[arr.count - 1 - i][j]
//        }
//    }
//    return tempArr
//}
//func r2(_ arr: [[Int]]) -> [[Int]]{
//    var tempArr = Array(repeating: Array(repeating: 0, count: arr.count), count: arr.count)
//    for i in 0..<arr.count{
//        for j in 0..<arr.count{
//            tempArr[i][j] = arr[i][arr.count - j - 1]
//        }
//    }
//    return tempArr
//}
//func r3(_ arr: [[Int]]) -> [[Int]]{
//    var tempArr = Array(repeating: Array(repeating: 0, count: arr.count), count: arr.count)
//    for i in 0..<arr.count{
//        for j in 0..<arr.count{
//            tempArr[i][j] = arr[arr.count - 1 - j][i]
//        }
//    }
//    return tempArr
//}
//func r4(_ arr: [[Int]]) -> [[Int]]{
//    var tempArr = Array(repeating: Array(repeating: 0, count: arr.count), count: arr.count)
//    for i in 0..<arr.count{
//        for j in 0..<arr.count{
//            tempArr[i][j] = arr[j][arr.count - 1 - i]
//        }
//    }
//    return tempArr
//}
//func r5(_ arr: [[Int]], _ l: Int) -> [[Int]]{
//    let n = arr.count
//    var tempArr = Array(repeating: Array(repeating: 0, count: n), count: n)
//    let subSize = (1 << l)
//    let subCnt = n / subSize
//    for i in 0..<subCnt{
//        for j in 0..<subCnt{
//            let sx = subSize * i
//            let sy = subSize * j
//            let targetX = (subCnt - i - 1) * subSize
//            let targetY = sy
//            for x in 0..<subSize{
//                for y in 0..<subSize{
//                    tempArr[x + sx][y + sy] = arr[targetX + x][targetY + y]
//                }
//            }
//        }
//    }
//    return tempArr
//}
//func r6(_ arr: [[Int]], _ l: Int) -> [[Int]]{
//    let n = arr.count
//    var tempArr = Array(repeating: Array(repeating: 0, count: n), count: n)
//    let subSize = (1 << l)
//    let subCnt = n / subSize
//    for i in 0..<subCnt{
//        for j in 0..<subCnt{
//            let sx = subSize * i
//            let sy = subSize * j
//            let targetX = sx
//            let targetY = (subCnt - j - 1) * subSize
//            for x in 0..<subSize{
//                for y in 0..<subSize{
//                    tempArr[x + sx][y + sy] = arr[targetX + x][targetY + y]
//                }
//            }
//        }
//    }
//    return tempArr
//}
//
//func r7(_ arr:[[Int]], _ l: Int) -> [[Int]]{
//    var tempArr = r3(arr)
//    let subSize = (1 << l)
//    for i in stride(from: 0, to: row, by: subSize){
//        for j in stride(from: 0, to: row, by: subSize){
//            var temp = Array(repeating: Array(repeating: 0, count: subSize), count: subSize)
//            for x in 0..<subSize{
//                for y in 0..<subSize{
//                    let nx = i + x
//                    let ny = j + y
//                    temp[x][y] = tempArr[nx][ny]
//                }
//            }
//            temp = r4(temp)
//            for x in 0..<subSize{
//                for y in 0..<subSize{
//                    let nx = x + i
//                    let ny = y + j
//                    tempArr[nx][ny] = temp[x][y]
//                }
//            }
//            
//        }
//    }
//    return tempArr
//}
//func r8(_ arr:[[Int]], _ l: Int) -> [[Int]]{
//    var tempArr = r4(arr)
//    let subSize = (1 << l)
//    for i in stride(from: 0, to: row, by: subSize){
//        for j in stride(from: 0, to: row, by: subSize){
//            var temp = Array(repeating: Array(repeating: 0, count: subSize), count: subSize)
//            for x in 0..<subSize{
//                for y in 0..<subSize{
//                    let nx = i + x
//                    let ny = j + y
//                    temp[x][y] = tempArr[nx][ny]
//                }
//            }
//            temp = r3(temp)
//            for x in 0..<subSize{
//                for y in 0..<subSize{
//                    let nx = x + i
//                    let ny = y + j
//                    tempArr[nx][ny] = temp[x][y]
//                }
//            }
//            
//        }
//    }
//    return tempArr
//}
//
//
//for i in arr{
//    for j in i{
//        print(j, terminator: " ")
//    }
//    print()
//}
