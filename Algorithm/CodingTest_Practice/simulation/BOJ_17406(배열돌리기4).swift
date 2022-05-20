//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/17.
// 너무오래걸렸음. 다시

//let nmk = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nmk[0]
//let m = nmk[1]
//let k = nmk[2]
//
//var arr = [[Int]]()
//for _ in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//var rcsArr = [[Int]]()
//for _ in 0..<k{
//    rcsArr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//var visited = Array(repeating: false, count: rcsArr.count)
//func dfs(_ depth: Int, _ arr: [[Int]]){
//    if depth == k{
//        for i in arr{
//            result = min(result, i.reduce(0, +))
//        }
//        return
//    }
//    for i in 0..<rcsArr.count{
//        if !visited[i]{
//            visited[i] = true
//            //가장위쪽 (r-s, c-s) 가장 아래쪽 (r + s, c + s)
//            //그룹의 개수 : s
//            var nm = 2 * rcsArr[i][2] + 1
//            var copyArr = arr
//            var temp = [Int]()
//            let r = rcsArr[i][0]
//            let c = rcsArr[i][1]
//            let s = rcsArr[i][2]
//            for g in 0..<rcsArr[i][2]{
//                temp = rotate(g, rcsArr[i][0], rcsArr[i][1], rcsArr[i][2], nm, arr)
//                let startX = r - s - 1
//                let endX = r + s - 1
//                let startY = c - s - 1
//                let endY = c + s - 1
//                var idx = 0
//                for j in (startY + g)...endY-g{
//                    copyArr[startX + g][j] = temp[idx]
//                    idx += 1
//                }
//                for i in (startX + g + 1)...(endX-g){
//                    copyArr[i][endY-g] = temp[idx]
//                    idx += 1
//                }
//                for j in stride(from: endY-g-1, through: startY+g, by: -1){
//                    copyArr[endX-g][j] = temp[idx]
//                    idx += 1
//                }
//                for i in stride(from: endX-g-1, through: startX+g+1, by: -1){
//                    copyArr[i][startY + g] = temp[idx]
//                    idx += 1
//                }
//                nm -= 2
//            }
//            dfs(depth + 1, copyArr)
//            visited[i] = false
//        }
//    }
//}
//
//
//func rotate(_ g: Int, _ r: Int, _ c: Int, _ s: Int, _ nm: Int, _ arr: [[Int]]) -> [Int]{
//    let startX = r - s - 1
//    let endX = r + s - 1
//    let startY = c - s - 1
//    let endY = c + s - 1
//    //예시를 보면 (3,4,2)로 계산해보면 행이 1부터 5까지니까 2s + 1이됨.
//    let length = (nm - 1) * 4
//    var temp = Array(repeating: 0, count: length)
//    var idx = 0
//    for j in (startY + g)...endY-g{
//        temp[(idx + 1) % length] = arr[startX + g][j]
//        idx += 1
//    }
//
//    for i in (startX + g + 1)...(endX-g){
//        temp[(idx + 1) % length] = arr[i][endY-g]
//        idx += 1
//    }
//
//    for j in stride(from: endY-g-1, through: startY+g, by: -1){
//        temp[(idx + 1) % length] = arr[endX-g][j]
//        idx += 1
//    }
//
//    for i in stride(from: endX-g-1, through: startX+g+1, by: -1){
//        temp[(idx + 1) % length] = arr[i][startY + g]
//        idx += 1
//    }
//
//    return temp
//}
//
//
//
//
////
//var result = Int.max
//
//dfs(0, arr)
//print(result)
