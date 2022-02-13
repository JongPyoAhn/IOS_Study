//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/08.
//
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]

var arr = [[Int]]()
var inActiveVirusLoc = [(Int, Int)]()
var emptyCount = 0
for i in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
    for j in 0..<n{
        if arr[i][j] == 2{
            inActiveVirusLoc.append((i, j))
        }
        if arr[i][j] == 0{
            emptyCount += 1 //빈 공간 셀 변수
        }
        
    }
}
var dfsVisited = Array(repeating: false, count: inActiveVirusLoc.count)
var activeVirus = [(Int, Int)]()
var result = Int.max
func dfs(_ depth: Int, _ start: Int){
    
    if depth == m{
        result = min(result, bfs(activeVirus))
        return
    }
    for i in start..<inActiveVirusLoc.count{
        if !dfsVisited[i]{
            dfsVisited[i] = true
            activeVirus.append(inActiveVirusLoc[i])
            dfs(depth + 1, i)
            activeVirus.removeLast()
            dfsVisited[i] = false
        }
    }
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, 1, -1]
var timeTable = Array(repeating: Array(repeating: 0, count: n), count: n)
func bfs(_ virus: [(Int, Int)]) -> Int{
    var time = 0
    var cnt = emptyCount//남아있는 공간 셀 변수
    var queue = [((Int, Int), Int)]()//x좌표, y좌표, 퍼뜨리는 시간
    var visited = Array(repeating: Array(repeating: false, count: n), count: n)

    for i in 0..<m{
        queue.append(((virus[i].0, virus[i].1), 0))
        visited[virus[i].0][virus[i].1] = true
    }
    while !queue.isEmpty{
        let pop = queue.removeFirst()
        let x = pop.0.0
        let y = pop.0.1
        time = pop.1
        timeTable[x][y] = time
        if arr[x][y] == 0 {
            cnt -= 1
        }
        if cnt == 0 {
            print(timeTable)
            print()
            print()
            return time
        }
        for i in 0..<4{
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < 0 || nx >= n || ny < 0 || ny >= n || visited[nx][ny] {continue}
            if arr[nx][ny] == 1{continue}
            queue.append(((nx, ny), time + 1))
            visited[nx][ny] = true
                        
        }
        
    }
    return Int.max
}
dfs(0, 0)
if result == Int.max{
    print(-1)
}else{
    print(result)
}
