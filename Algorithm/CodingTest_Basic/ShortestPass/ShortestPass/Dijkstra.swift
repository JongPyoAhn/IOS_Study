//
//  main.swift
//  ShortestPass
//
//  Created by 안종표 on 2021/09/03.
//
//import Foundation
//
//struct NodePriority: Comparable{
//    //그냥 비교하는건데 <는 되고, >는 안된다.
//    static func < (lhs: NodePriority, rhs: NodePriority) -> Bool{
//        lhs.priority > rhs.priority
//    }
//    var node: String = ""
//    var priority: Int = 0
//}
//
////start : 시작노드의 번호
////graph : 각 노드에 연결되어있는 노드의 정보
//func dijkstra(_ graph: [String: [String: Int]], _ start: String) ->  [String: Int] {
//    var distances: [String: Int] = [:] //최단거리 테이블
//    var priorityQueue = MaxHeap(NodePriority.init(node: start, priority: 0)) //우선순위 큐
//
//    //최단거리테이블에 무한값 삽입
//    for key in graph.keys {
//        let value = key == start ? 0 : 2147483647
//        distances.updateValue(value, forKey: key)
//    }
//
//    //우선순위큐 작업
//    while !priorityQueue.isEmpty() {
//        guard let popped = priorityQueue.pop() else { break }
//
//        if distances[popped.node]! < popped.priority {
//            continue
//        }
//
//        //꺼낸노드의 graph니까 꺼낸노드가 A이면 B,C,D가 for문을 돌게된다.
//        for (node, indirectLine) in graph[popped.node]! { //indirectLine은 간선임
//            let distance = indirectLine + popped.priority //간선 + 꺼낸원소거리(우선순위)
//            if distance < distances[node]! { //현재구한거리가 테이블에 적힌거리보다 작은경우
//                distances[node] = distance //테이블에적힌노드의 거리를 현재구한거리로 치환
//                priorityQueue.insert(NodePriority.init(node: node, priority: distance))//우선순위큐에 인접노드들추가
//            }
//        }
//    }
//    return distances
//}
//
//let graph: [String: [String: Int]] = [
//    "A" : ["B": 9, "C" : 1, "D" : 15],
//    "B" : ["E": 10],
//    "C" : ["B": 5, "E" : 3],
//    "D" : ["E": 10],
//    "E" : ["F": 7],
//    "F" : [:]
//]
//print(dijkstra(graph, "A"))
