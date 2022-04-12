//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/04/12.
// 다시

//import Foundation
//print(solution(2, 10, [7,4,5,6]))
//struct Queue<T>{
//    var enqueue: [T]
//    var dequeue: [T] = []
//    mutating func push(_ x: T){
//        enqueue.append(x)
//    }
//    mutating func pop() -> T?{
//        if dequeue.isEmpty{
//            dequeue = enqueue.reversed()
//            enqueue.removeAll()
//        }
//        return dequeue.popLast()
//    }
//    
//}
//func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//    //지나는중인트럭
//    var contiQueue = Queue(enqueue: Array(repeating: 0, count: bridge_length))
//    var second = 0
//    var sum = 0
//    var idx = 0
//    while idx < truck_weights.count{
//        //한번돌때마다 초더해주고
//        second += 1
//        if let popped = contiQueue.pop(){
//            sum -= popped
//        }
//        if sum + truck_weights[idx] <= weight {
//            let pop = truck_weights[idx]
//            idx += 1
//            sum += pop
//            contiQueue.push(pop)
//            
//        }else{
//            contiQueue.push(0)
//        }
//        
//    }
//    //마지막 트럭이 다리를 건너는시간
//    second += bridge_length
//    return second
//}
