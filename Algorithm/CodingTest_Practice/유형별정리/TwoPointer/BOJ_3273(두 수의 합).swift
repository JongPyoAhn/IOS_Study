//
//  BOJ_3273(두 수의 합).swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/31.
// 다시

//1.
//let n = Int(String(readLine()!))!
//var arr = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
//let x = Int(String(readLine()!))!
//
//var left = 0
//var right = n - 1
//var result = 0
//while left < right{
//    let a = arr[left]
//    let b = arr[right]
//    if x == a + b {
//        right -= 1
//        left += 1
//        result += 1
//    }else if x < a + b {
//        right -= 1
//    }else{
//        left += 1
//    }
//
//}
//print(result)


//2.
//var sum = 0
//var result = 0
//var visited = Array(repeating: false, count: 2000001)
//
//for i in arr{
//    visited[i] = true
//}
//for start in 0..<n{
//    sum = x - arr[start]
//    if sum > 0{
//        if arr[start] < sum && visited[sum] {
//            result += 1
//        }
//    }
//}
//print(result)
