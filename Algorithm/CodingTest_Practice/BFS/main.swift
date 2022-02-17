//
//  main.swift
//  CodingTest_Practice
//
//  Created by 안종표 on 2022/02/16.
//

let A = readLine()!.split(separator: " ").map{String($0)}
let B = readLine()!.split(separator: " ").map{String($0)}
let C = readLine()!.split(separator: " ").map{String($0)}

let aCnt = Int(A[0])!
let bCnt = Int(B[0])!
let cCnt = Int(C[0])!
var aStatus = [String]()
var bStatus = [String]()
var cStatus = [String]()
if aCnt > 0 {
    aStatus = A[1].map{String($0)}
}
if bCnt > 0 {
    bStatus = B[1].map{String($0)}
}
if cCnt > 0 {
    cStatus = C[1].map{String($0)}
}

func bfs(){
    var queue = [([String], [String], [String], Int)]()
    var visited = Set<String>()
    
    queue.append((aStatus, bStatus, cStatus, 0))
    visited.insert("\(aStatus.joined()), \(bStatus.joined()), \(cStatus.joined())")
    var idx = 0
    while queue.count > idx {
        let pop = queue[idx]
        idx += 1
        let poppedAStatus = pop.0
        let poppedBStatus = pop.1
        let poppedCStatus = pop.2
        
        if !poppedAStatus.contains("B") && !poppedAStatus.contains("C") && !poppedBStatus.contains("A") && !poppedBStatus.contains("C") && !poppedCStatus.contains("A") && !poppedCStatus.contains("B"){
            print(pop.3)
            break
        }
        
        if poppedAStatus.count > 0{
            var tempA = poppedAStatus
            var tempB = poppedBStatus
            var tempC = poppedCStatus
            let poppedA = tempA.removeLast()
            tempB.append(poppedA)
            tempC.append(poppedA)
            
            let joinTempA = tempA.joined()
            let joinTempB = tempB.joined()
            let joinTempC = tempC.joined()

            if !visited.contains("\(joinTempA), \(joinTempB), \(poppedCStatus.joined())"){
                queue.append((tempA, tempB, poppedCStatus, pop.3 + 1))
                visited.insert("\(joinTempA), \(joinTempB), \(poppedCStatus.joined())")
               
            }
            if !visited.contains("\(joinTempA), \(poppedBStatus.joined()), \(joinTempC)"){
                queue.append((tempA, poppedBStatus, tempC, pop.3 + 1))
                visited.insert("\(joinTempA), \(poppedBStatus.joined()), \(joinTempC)")
            }
            
            
        }
        if poppedBStatus.count > 0{
            var tempA = poppedAStatus
            var tempB = poppedBStatus
            var tempC = poppedCStatus
            let poppedB = tempB.removeLast()
            tempA.append(poppedB)
            tempC.append(poppedB)
            
            let joinTempA = tempA.joined()
            let joinTempB = tempB.joined()
            let joinTempC = tempC.joined()
            
            if !visited.contains("\(joinTempA), \(joinTempB), \(poppedCStatus.joined())"){
                queue.append((tempA, tempB, poppedCStatus, pop.3 + 1))
                visited.insert("\(joinTempA), \(joinTempB), \(poppedCStatus.joined())")
            }
            if !visited.contains("\(poppedAStatus.joined()), \(joinTempB), \(joinTempC)"){
                queue.append((poppedAStatus, tempB, tempC, pop.3 + 1))
                visited.insert("\(poppedAStatus.joined()), \(joinTempB), \(joinTempC)")
            }
            
            
        }
        if poppedCStatus.count > 0{
            var tempA = poppedAStatus
            var tempB = poppedBStatus
            var tempC = poppedCStatus
            let poppedC = tempC.removeLast()
            tempA.append(poppedC)
            tempB.append(poppedC)
            let joinTempA = tempA.joined()
            let joinTempB = tempB.joined()
            let joinTempC = tempC.joined()
            if !visited.contains("\(joinTempA), \(poppedBStatus.joined()), \(joinTempC)"){
                queue.append((tempA, poppedBStatus, tempC, pop.3 + 1))
                visited.insert("\(joinTempA), \(poppedBStatus.joined()), \(joinTempC)")
            }
            if !visited.contains("\(poppedAStatus.joined()), \(joinTempB), \(joinTempC)"){
                queue.append((poppedAStatus, tempB, tempC, pop.3 + 1))
                visited.insert("\(poppedAStatus.joined()), \(joinTempB), \(joinTempC)")
            }
            
            
        }
        
        
    }
    
}
bfs()
