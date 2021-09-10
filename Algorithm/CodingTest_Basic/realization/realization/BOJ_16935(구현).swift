//
//  main.swift
//  realization
//
//  Created by 안종표 on 2021/09/10.
// O



//let read = readLine()!.split(separator: " ").map{Int(String($0))!}
//var n = read[0]
//var m = read[1]
//let r = read[2]
//var count = 0
//var arr = Array(repeating: Array(repeating: 0, count: m), count: n)
//var resultArr :[[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
//for i in 0..<n {
//    arr[i] = readLine()!.split(separator: " ").map{Int($0)!}
//}
//
//let a = readLine()!.split(separator: " ").map{String($0)}
//for k in 0..<a.count{
//    if count < r {
//        switch a[k]{
//        case "1":
//            resultArr = arr.reversed()
//            arr = resultArr
//            count += 1
//        case "2":
//            for i in 0..<n{
//                resultArr[i] = arr[i].reversed()
//            }
//            arr = resultArr
//            count += 1
//
//        case "3":
//            swap(&n, &m)
//            resultArr = Array(repeating: Array(repeating: 0, count: m), count: n)
//            for i in 0..<n{
//                for j in 0..<m{
//                    resultArr[i][j] = arr[m - 1 - j][i]
//                }
//            }
//            arr = resultArr
//            count += 1
//
//        case "4":
//            swap(&n, &m)
//            resultArr = Array(repeating: Array(repeating: 0, count: m), count: n)
//            for i in 0..<n{
//                for j in 0..<m{
//                    resultArr[i][j] = arr[j][n - 1 - i]
//                }
//            }
//            arr = resultArr
//            count += 1
//
//        case "5":
//            // 4 -> 1
//            for i in 0..<n/2{
//                for j in 0..<m/2{
//                    resultArr[i][j] = arr[(n / 2) + i][j]
//                }
//            }
//
//            // 1 -> 2
//            for i in 0..<n/2{
//                for j in m/2..<m{
//                    resultArr[i][j] = arr[i][j - (m/2)]
//                }
//            }
//
//            // 2 -> 3
//            for i in n/2..<n{
//                for j in m/2..<m{
//                    resultArr[i][j] = arr[i - n/2][j]
//                }
//            }
//
//            // 3 -> 4
//            for i in n/2..<n{
//                for j in 0..<m/2{
//                    resultArr[i][j] = arr[i][j + m/2]
//                }
//            }
//            arr = resultArr
//            count += 1
//
//        case "6":
//            // 1 -> 4
//            for i in n/2..<n{
//                for j in 0..<m/2{
//                    resultArr[i][j] = arr[i - (n / 2)][j]
//                }
//            }
//
//            // 2 -> 1
//            for i in 0..<n/2{
//                for j in 0..<m/2{
//                    resultArr[i][j] = arr[i][j + (m/2)]
//                }
//            }
//
//            // 3 -> 2
//            for i in 0..<n/2{
//                for j in m/2..<m{
//                    resultArr[i][j] = arr[i + n/2][j]
//                }
//            }
//
//            // 4 -> 3
//            for i in n/2..<n{
//                for j in m/2..<m{
//                    resultArr[i][j] = arr[i][j - m/2]
//                }
//            }
//            arr = resultArr
//            count += 1
//        default:
//            break
//        }
//    }
//}
//for i in 0..<n {
//    print(arr[i].map{String($0)}.joined(separator: " "))
//}


