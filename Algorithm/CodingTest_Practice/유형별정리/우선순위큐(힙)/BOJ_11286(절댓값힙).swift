//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/25.
//

//import Foundation
//struct Heap<T: Comparable> {
//    private var elements: [T] = []
//    private let sortFunction: (T, T) -> Bool
//    
//    init (sortFunction: @escaping (T, T) -> Bool){
//        self.sortFunction = sortFunction
//    }
//    var isEmpty: Bool {
//        return self.elements.count == 1
//    }
//
//    func leftChild(of index: Int) -> Int {
//        return index * 2
//    }
//    func rightChild(of index: Int) -> Int {
//        return index * 2 + 1
//    }
//    func parent(of index: Int) -> Int {
//        return (index) / 2
//    }
//    mutating func diveDown(from index: Int) {
//        var higherPriority = index
//        let leftIndex = self.leftChild(of: index)
//        let rightIndex = self.rightChild(of: index)
//
//        if leftIndex < self.elements.endIndex && self.sortFunction(self.elements[leftIndex], self.elements[higherPriority]) {
//            higherPriority = leftIndex
//        }
//        if rightIndex < self.elements.endIndex && self.sortFunction(self.elements[rightIndex], self.elements[higherPriority]) {
//            higherPriority = rightIndex
//        }
//        if higherPriority != index {
//            self.elements.swapAt(higherPriority, index)
//            self.diveDown(from: higherPriority)
//        }
//    }
//    mutating func swimUp(from index: Int) {
//        var index = index
//        while index != 1 && self.sortFunction(self.elements[index], self.elements[self.parent(of: index)]) {
//            self.elements.swapAt(index, self.parent(of: index))
//            index = self.parent(of: index)
//        }
//    }
//    mutating func insert(node: T) {
//        if self.isEmpty {
//            self.elements.append(node)
//            return
//        }
//        self.elements.append(node)
//
//        self.swimUp(from: self.elements.endIndex - 1)
//    }
//    mutating func remove() -> T? {
//        if self.isEmpty { return nil }
//        self.elements.swapAt(1, elements.endIndex - 1)
//        let deleted = elements.removeLast()
//        self.diveDown(from: 1)
//
//        return deleted
//    }
//}
//var heap = Heap<Int> { a, b in
//    if abs(a) < abs(b){
//        return true
//    }else if abs(a) == abs(b){
//        return a < b
//    }else{
//        return false
//    }
//}
//heap.insert(node: 0)
//var str = ""
//let n = Int(String(readLine()!))!
//for _ in 0..<n{
//    let x = Int(String(readLine()!))!
//    if x != 0 {
//        heap.insert(node: x)
//    }else{
//        if let removed = heap.remove() {
//            str += "\(removed)\n"
//        }else{
//            str += "0\n"
//        }
//    }
//}
//print(str)

