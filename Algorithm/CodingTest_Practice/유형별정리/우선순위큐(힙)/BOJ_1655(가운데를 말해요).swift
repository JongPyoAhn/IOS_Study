//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/05/27.
//
//import Foundation
//
//// 라이노님 빠른 입력 FileIO 클래스
//final class FileIO {
//    private var buffer:[UInt8]
//    private var index: Int
//
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
//        index = 0
//    }
//
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 }
//
//        return buffer.withUnsafeBufferPointer { $0[index] }
//    }
//
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//
//        while now == 10 || now == 32 { // 공백과 줄바꿈 무시
//            now = read()
//        }
//
//        if now == 45{ // 음수 처리
//            isPositive.toggle()
//            now = read()
//        }
//
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//
//        return sum * (isPositive ? 1:-1)
//    }
//
//    @inline(__always) func readString() -> String {
//        var str = ""
//        var now = read()
//
//        while now == 10
//            || now == 32 { now = read() } // 공백과 줄바꿈 무시
//
//        while now != 10
//            && now != 32 && now != 0 {
//                str += String(bytes: [now], encoding: .ascii)!
//                now = read()
//        }
//
//        return str
//    }
//}
//
//
//struct Heap<T: Comparable> {
//    private var elements: [T] = []
//    private let sortFunction: (T, T) -> Bool
//    init (sortFunction: @escaping (T, T) -> Bool){
//        self.sortFunction = sortFunction
//    }
//    var isEmpty: Bool {
//        return self.elements.count == 1
//    }
//    var length: Int {
//        return elements.count
//    }
//    var peek: T?{
//        return !isEmpty ? elements[1] : nil
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
//let fileIO = FileIO()
//let n = fileIO.readInt()
//var arr = [Int]()
//var str = ""
//var leftHeap = Heap<Int>(sortFunction: >)//최대힙
//var rightHeap = Heap<Int>(sortFunction: <)//최소힙
//leftHeap.insert(node: 0)
//rightHeap.insert(node: 0)
//for _ in 0..<n{
//    let a = fileIO.readInt()
//
//    if leftHeap.length == rightHeap.length{
//        leftHeap.insert(node: a)
//    }else{
//        rightHeap.insert(node: a)
//    }
//
//    if !rightHeap.isEmpty && leftHeap.peek! > rightHeap.peek!{
//        let leftPop = leftHeap.remove()!
//        let rightPop = rightHeap.remove()!
//        leftHeap.insert(node: rightPop)
//        rightHeap.insert(node: leftPop)
//    }
//    str += "\(leftHeap.peek!)\n"
//}
//print(str)
