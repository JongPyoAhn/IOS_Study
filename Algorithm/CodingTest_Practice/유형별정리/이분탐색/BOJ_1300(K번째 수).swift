//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/24.
// 다시

//let n = Int(String(readLine()!))!
//let k = Int(String(readLine()!))!
//
//var start = 1
//var end = n * n
//while start <= end{
//    let mid = (start + end) / 2 //mid는 B[k] = x일 때, x
//    var count = 0 //앞에 작은수가 몇개있는지 세기위함.
//    for i in 1...n{
//        count += min(mid / i, n) //임의로 이분탐색을 했을 때, n은 8인데 mid가 13이면 13 / 1은 13이 나오기 때문에 13개가 기록되버림.
//    }
//    if count >= k{//lowerBound를 해줘야 정확히 해당인덱스에 관한 수를 가져옴. mid가 다른데, count가 같은게 여러개가 있을 수도있음.
//        //예를 들어서, mid = 4일때 count가 5이고 mid가 5일때도 count가 5이면 upperBound를 써버리면 6을 출력함.
//        end = mid - 1
//    }else{
//        start = mid + 1
//    }
//
//}
//print(start)
