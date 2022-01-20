
//let n = Int(String(readLine()!))!
//var arr = [[Int]]()
//struct Point{
//    var x: Int
//    var y: Int
//    var dist: Int
//}
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//
//var startX = 0
//var startY = 0
//for i in 0..<n{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//    for j in 0..<n{
//        if arr[i][j] == 9 {
//            startX = i
//            startY = j
//            arr[i][j] = 0
//        }
//    }
//}
//var time = 0
//func bfs(_ x: Int, _ y: Int) -> Int{
//    var size = 2
//    var cnt = 2
//    var minPt = Point(x: x, y: y, dist: 0)
//
//    while true{//몇번이동할지모르기때문에
//        var visited = Array(repeating: Array(repeating: false, count: 21), count: 21)
//        var queue = [Point]()
//        visited[minPt.x][minPt.y] = true
//        queue.append(minPt)
//        minPt.dist = Int.max
//
//        while !queue.isEmpty{
//            let curr = queue.removeFirst()//현재위치를 저장하기위해서
//            if curr.dist > minPt.dist {break}
//            if arr[curr.x][curr.y] > size {continue}
//            if arr[curr.x][curr.y] != 0 && arr[curr.x][curr.y] < size {
//
//                if curr.dist < minPt.dist{
//                    minPt = curr
//                }else if curr.dist == minPt.dist{
//                    if curr.x < minPt.x{
//                        minPt = curr
//                    }else if curr.x == minPt.x && curr.y < minPt.y {
//                        minPt = curr
//                    }
//                }
//                continue
//            }
//            for i in 0..<4{
//                let nx = curr.x - dx[i]
//                let ny = curr.y - dy[i]
//
//                if nx >= 0 && nx < n && ny >= 0 && ny < n && !visited[nx][ny]{
//                    visited[nx][ny] = true
//                    queue.append(Point(x: nx, y: ny, dist: curr.dist + 1))
//
//                }
//            }
//        }
//
//
//        if minPt.dist == Int.max{
//
//            break
//        }else{
//            time = minPt.dist
//            cnt -= 1
//            if cnt == 0 {
//                size += 1
//                cnt = size
//            }
//
//            arr[minPt.x][minPt.y] = 0
//        }
//
//    }
//    return time
//}
//print(bfs(startX, startY))

