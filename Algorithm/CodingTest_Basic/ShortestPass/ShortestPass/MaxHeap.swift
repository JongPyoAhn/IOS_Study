//
//  heap.swift
//  ShortestPass
//
//  Created by 안종표 on 2021/09/03.
//

import Foundation
struct MaxHeap<T: Comparable>{
    var heap: Array<T> = []

    init(_ data: T){
        heap.append(data) //0번 인덱스 채우기용
        heap.append(data) //실제 RootNode
    }
    //Insert
    //1. 완전 이진트리 구조에 맞춰 일단 삽입
    //2. 삽입된 데이터의 크기가 부모노드의 데이터보다 작을 때 까지 swap
    mutating func insert(_ data: T){
        if heap.count == 0 {
            heap.append(data)
            heap.append(data)
            return
        }
        heap.append(data)

        func isMoveUp(_ insertIndex: Int) -> Bool {
            if insertIndex <= 1 { //루트노드 일때
                return false
            }
            let parentIndex: Int = insertIndex / 2
            return heap[insertIndex] > heap[parentIndex] ? true : false
        }

        var insertIndex: Int = heap.count - 1
        while isMoveUp(insertIndex) {
            let parentIndex: Int = insertIndex / 2
            heap.swapAt(insertIndex, parentIndex)
            insertIndex = parentIndex
        }
    }

    //Pop
    //1. 가장 큰 값인 RootNode를 삭제한다.
    //2. 가장 마지막에 추가된 노드를 RootNode로 이동
    //3. 이동된 RootNode의 데이터가 왼쪽, 오른쪽 자식 노드의 데이터보다 클 때 까지, 자식 노드중 큰 값을 가진 노드와 swap해준다.(반복)
    enum moveDownStatus {case none, left, right}
    mutating func pop() -> T?{
        if heap.count <= 1{
            return heap.removeLast()
        }

        let returnData = heap[1]
        heap.swapAt(1, heap.count - 1)
        heap.removeLast()

        func moveDown(_ poppedIndex: Int) -> moveDownStatus{
            let leftChildIndex = (poppedIndex * 2)
            let rightChildIndex = leftChildIndex + 1

            if leftChildIndex >= heap.count {
                return .none
            }

            if rightChildIndex >= heap.count {
                return heap[leftChildIndex] > heap[poppedIndex] ? .left:.none
            }

            if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightChildIndex] < heap[poppedIndex]) {
                return .none
            }

            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
                return heap[leftChildIndex] > heap[rightChildIndex] ? .left:.right
            }
            return heap[leftChildIndex] > heap[poppedIndex] ? .left:.right
        }

        var poppedIndex = 1
        while true {
            switch moveDown(poppedIndex) {
            case .none:
                return returnData
            case .left:
                let leftChildIndex = poppedIndex * 2
                heap.swapAt(poppedIndex, leftChildIndex)
                poppedIndex = leftChildIndex
                return returnData
            case .right:
                let rightChildIndex = (poppedIndex * 2) + 1
                heap.swapAt(poppedIndex, rightChildIndex)
                poppedIndex = rightChildIndex
                return returnData
            }
        }

    }

    
    func isEmpty() -> Bool{
        return heap.count > 1 ? false : true
    }
}
