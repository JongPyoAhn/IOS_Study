//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/02/25.
//

//import Foundation
//let info = [0,1,0,1,1,0,1,0,0,1,0]
//let edges = [[0,1],[0,2],[1,3],[1,4],[2,5],[2,6],[3,7],[4,8],[6,9],[9,10]]
//print(solution(info, edges))
//func solution(_ info:[Int], _ edges:[[Int]]) -> Int {
//
//    var dict = [Int : [Int]]()
//    for i in edges{
//        if dict[i[0]] == nil{
//            dict[i[0]] = [i[1]]
//        }else{
//            dict[i[0]]?.append(i[1])
//        }
//
//    }
//    var result = 0
//    func dfs(_ node: Int, _ nextNodes: [Int], _ sheep: Int, _ wolf: Int){
//        var newNextNodes = nextNodes
//        var sheepCnt = sheep
//        var wolfCnt = wolf
//        if info[node] == 0 {sheepCnt += 1}
//        else {wolfCnt += 1}
//        if wolfCnt >= sheepCnt{return}
//        result = max(result, sheepCnt)
//
//        newNextNodes.append(contentsOf: dict[node] ?? [])
//        if let idx = newNextNodes.firstIndex(of: node){
//            newNextNodes.remove(at: idx)
//        }
//        for i in newNextNodes{
//            //            print("node : \(i) newNextNodes: \(newNextNodes)")
//            dfs(i, newNextNodes, sheepCnt, wolfCnt)
//        }
//    }
//    dfs(0, [0], 0, 0)
//
//
//    return result
//}
