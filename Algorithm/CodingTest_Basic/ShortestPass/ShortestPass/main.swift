//
//  main.swift
//  ShortestPass
//
//  Created by 안종표 on 2021/09/04.
//

//struct maxHeap<T: Comparable>{
//    var heap: Array<T> = []
//
//    init(_ data: T){
//        heap.append(data) //0번 인덱스 채우기용
//        heap.append(data) //실제 RootNode
//    }
//    mutating func insert(_ data: T){
//        if heap.count == 0 {
//            heap.append(data)
//            heap.append(data)
//            return
//        }
//        heap.append(data)
//
//        func isMoveUp(_ insertIndex: Int) -> Bool {
//            if insertIndex <= 1 { //루트노드 일때
//                return false
//            }
//            let parentIndex: Int = insertIndex / 2
//            return heap[insertIndex] > heap[parentIndex] ? true : false
//        }
//
//        var insertIndex: Int = heap.count - 1
//        while isMoveUp(insertIndex) {
//            let parentIndex: Int = insertIndex / 2
//            heap.swapAt(insertIndex, parentIndex)
//            insertIndex = parentIndex
//        }
//    }
//
//    enum moveDownStatus {case none, left, right}
//    mutating func pop() -> T?{
//        if heap.count <= 1{
//            return heap.removeLast()
//        }
//
//        let returnData = heap[1]
//        heap.swapAt(1, heap.count - 1)
//        heap.removeLast()
//
//        func moveDown(_ poppedIndex: Int) -> moveDownStatus{
//            let leftChildIndex = (poppedIndex * 2)
//            let rightChildIndex = leftChildIndex + 1
//
//            if leftChildIndex >= heap.count {
//                return .none
//            }
//
//            if rightChildIndex >= heap.count {
//                return heap[leftChildIndex] > heap[poppedIndex] ? .left:.none
//            }
//
//            if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightChildIndex] < heap[poppedIndex]) {
//                return .none
//            }
//
//            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
//                return heap[leftChildIndex] > heap[rightChildIndex] ? .left:.right
//            }
//            return heap[leftChildIndex] > heap[poppedIndex] ? .left:.right
//        }
//
//        var poppedIndex = 1
//        while true {
//            switch moveDown(poppedIndex) {
//            case .none:
//                return returnData
//            case .left:
//                let leftChildIndex = poppedIndex * 2
//                heap.swapAt(poppedIndex, leftChildIndex)
//                poppedIndex = leftChildIndex
//                return returnData
//            case .right:
//                let rightChildIndex = (poppedIndex * 2) + 1
//                heap.swapAt(poppedIndex, rightChildIndex)
//                poppedIndex = rightChildIndex
//                return returnData
//            }
//        }
//
//    }
//
//
//    func isEmpty() -> Bool{
//        return heap.count > 1 ? false : true
//    }
//}
import Foundation
public struct Heap<T> {
    var nodes: [T] = []
    let comparer: (T, T) -> Bool
    
    var isEmpty: Bool {
        return nodes.isEmpty
    }
    init(comparer: @escaping (T,T) -> Bool) {
        self.comparer = comparer
    }
    func peek() -> T? {
        return nodes.first
    }
    mutating func insert(_ element: T) {
        var index = nodes.count
        nodes.append(element)
        
        while index > 0, !comparer(nodes[index], nodes[(index - 1) / 2]) {
            nodes.swapAt(index, (index - 1) / 2)
            index = (index - 1) / 2
        }
    }
    mutating func delete() -> T? {
        guard !nodes.isEmpty else {
            return nil
        }
        if nodes.count == 1 {
            return nodes.removeFirst()
        }
        let result = nodes.first
        nodes.swapAt(0, nodes.count - 1)
        _ = nodes.popLast()
        
        var index = 0
        while index < nodes.count {
            let left = index * 2 + 1
            let right = left + 1
            
            if right < nodes.count {
                if comparer(nodes[left], nodes[right]),
                   !comparer(nodes[right], nodes[index]) {
                    nodes.swapAt(right, index)
                    index = right
                } else if !comparer(nodes[left], nodes[index]) {
                    nodes.swapAt(left, index)
                    index = left
                } else {
                    break
                }
            } else if left < nodes.count {
                if !comparer(nodes[left], nodes[index]) {
                    nodes.swapAt(left, index)
                    index = left
                } else {
                    break
                }
            } else {
                break
            }
        }
        
        return result
    }
}
extension Heap where T: Comparable {
    init() {
        self.init(comparer: >)
    }
}

struct NodePriority: Comparable{
    var priorty: Int
    var node: String
    
    
    static func < (lhs: NodePriority, rhs: NodePriority) -> Bool{
        lhs.priorty < rhs.priorty
    }
}

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let v = arr[0]
let e = arr[1]
let start = String(readLine()!)
var graph = [String : [String:Int]]()
let INF = Int.max

for i in 1...v{
    graph[String(i)] = [:]
}

for _ in 1...e {
    let indirectLine = readLine()!.split(separator: " ").map{String($0)}
    graph[indirectLine[0]]?.updateValue(Int(indirectLine[2])!, forKey: indirectLine[1])
}

func dijkstra(_ graph: [String: [String: Int]],_ start: String){
    var distances = [String: Int]()
    var priorityQueue = Heap<NodePriority>()
    priorityQueue.insert(NodePriority(priorty: 0, node: start))
    for key in graph.keys {
        let value = key == start ? 0 : INF
        distances.updateValue(value, forKey: key)
    }


    while !priorityQueue.isEmpty {
        guard let pop = priorityQueue.delete() else {break}

        if distances[pop.node]! < pop.priorty {
                  continue
              }

        for (node, indirectLine) in graph[pop.node]! {
            let distance = indirectLine + pop.priorty
            if distance < distances[node]! {
                distances[node] = distance
                priorityQueue.insert(NodePriority.init(priorty: distance, node: node))
            }
        }

    }
    
    for i in 1...v{
        if distances[String(i)] == INF {
            print("INF")
        }else {
            print(distances[String(i)]!)
        }
    }
}

dijkstra(graph, start)
