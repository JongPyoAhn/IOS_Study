//
//  main.swift
//  QueueAndGraph
//
//  Created by 안종표 on 2021/08/31.
// O

//let n = Int(readLine()!)!
//var deque: [Int] = []
//
//func push_front(_ x: Int) {
//    if deque.isEmpty {
//        deque.append(x)
//    }else {
//        deque.reverse()
//        deque.append(x)
//        deque.reverse()
//    }
//}
//
//func push_back(_ x: Int) {
//    deque.append(x)
//}
//
//func pop_front() -> Int {
//    if deque.isEmpty {
//        return -1
//    }else {
//        return deque.removeFirst()
//    }
//}
//
//func pop_back() -> Int {
//    if deque.isEmpty {
//        return -1
//    }else {
//        return deque.removeLast()
//    }
//}
//
//func size() -> Int{
//    return deque.count
//}
//
//func empty() -> Int{
//    if deque.isEmpty {
//        return 1
//    }else {
//        return 0
//    }
//}
//
//func front() -> Int {
//    if deque.isEmpty {
//        return -1
//    }else {
//        return deque.first!
//    }
//}
//
//func back() -> Int {
//    if deque.isEmpty {
//        return -1
//    }else {
//        return deque.last!
//    }
//}
//
//for _ in 1...n {
//    let a = readLine()!.split(separator: " ")
//    switch String(a[0]) {
//    case "push_front":
//        push_front(Int(a[1])!)
//    case "push_back":
//        push_back(Int(a[1])!)
//    case "pop_front":
//        print(pop_front())
//    case "pop_back":
//        print(pop_back())
//    case "size":
//        print(size())
//    case "empty":
//        print(empty())
//    case "front":
//        print(front())
//    case "back":
//        print(back())
//    default:
//        break
//    }
//}

