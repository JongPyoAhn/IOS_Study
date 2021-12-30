//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2021/12/30.
//

import Foundation
let abc = readLine()!.split(separator: " ").map{Int(String($0))!}
let a = abc[0]
let b = abc[1]
let c = abc[2]
var queue = [(Int, Int)]()
var result = 0
var visited = Array(repeating: Array(repeating: false, count: 10000), count: 10000)
func bfs(_ a: Int, _ b: Int, _ c: Int){
    let sum = a + b + c
    queue.append((a, b))
    visited[a][b] = true
    
    while !queue.isEmpty{
        let pop = queue.removeFirst()
        let z = sum - pop.0 - pop.1
        if pop.0 == pop.1 && pop.1 == z{
            result = 1
            break
        }
        if pop.0 < pop.1 && !visited[pop.0 + pop.0][pop.1 - pop.0]{
            visited[pop.0 + pop.0][pop.1 - pop.0] = true
            queue.append((pop.0 + pop.0, pop.1 - pop.0))
        }else if pop.0 > pop.1 && !visited[pop.1 + pop.1][pop.0 - pop.1]{
            visited[pop.1 + pop.1][pop.0 - pop.1] = true
            queue.append((pop.1 + pop.1, pop.0 - pop.1))
        }
        if pop.1 < z && !visited[pop.1 + pop.1][z]{
            visited[pop.1 + pop.1][z - pop.1] = true
            queue.append((pop.1 + pop.1, z - pop.1))
        }else if pop.1 > z && !visited[z + z][pop.1 - z]{
            visited[z + z][pop.1 - z] = true
            queue.append((z + z, pop.1 - z))
        }
        
    }
    
}
bfs(a, b, c)
print(result)
