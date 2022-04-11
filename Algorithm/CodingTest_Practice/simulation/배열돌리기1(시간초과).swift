////
////  main.swift
////  CodingTest_Practice
////
////  Created by 안종표 on 2022/03/23.
////
//
//import Foundation
//
//class FileIO {
//    @inline(__always) private var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0], byteIdx = 0
//
//    @inline(__always) private func readByte() -> UInt8 {
//        defer { byteIdx += 1 }
//        return buffer.withUnsafeBufferPointer { $0[byteIdx] }
//    }
//
//    @inline(__always) func readInt() -> Int {
//        var number = 0, byte = readByte(), isNegative = false
//        while byte == 10 || byte == 32 { byte = readByte() }
//        if byte == 45 { byte = readByte(); isNegative = true }
//        while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
//        return number * (isNegative ? -1 : 1)
//    }
//
//    @inline(__always) func readStirngSum() -> Int {
//        var byte = readByte()
//        while byte == 10 || byte == 32 { byte = readByte() }
//        var sum = Int(byte)
//        while byte != 10 && byte != 32 && byte != 0 { byte = readByte(); sum += Int(byte) }
//        return sum - Int(byte)
//    }
//
//    @inline(__always) private func write(_ output: String) {
//        FileHandle.standardOutput.write(output.data(using: .utf8)!)
//    }
//}
//let fileIO = FileIO()
//let n = fileIO.readInt()
//let m = fileIO.readInt()
//let r = fileIO.readInt()
//
//var arr = Array(repeating: Array(repeating: 0, count: m), count: n)
//for i in 0..<n{
//    for j in 0..<m{
//        arr[i][j] = fileIO.readInt()
//    }
//}
//
////그룹의 개수 구하기
//var groupCnt = min(n, m) / 2
////회전횟수
//for _ in 0..<r{
//    //그룹 개수만큼 반복
//
//    for i in 0..<groupCnt{
//        var x = i
//        var y = i
//        var curValue = arr[x][y]
//        var prevValue = 0
//        for j in (i + 1)..<(n - i){ //좌
//            x = j
//            prevValue = arr[x][y]
//            arr[x][y] = curValue
//            curValue = prevValue
//        }
//
//        for j in (i + 1)..<(m - i){ //하
//            y = j
//            prevValue = arr[x][y]
//            arr[x][y] = curValue
//            curValue = prevValue
//        }
//        for j in stride(from: n - i - 2, through: i, by: -1){//우
//            x = j
//            prevValue = arr[x][y]
//            arr[x][y] = curValue
//            curValue = prevValue
//        }
//        for j in stride(from: m - i - 2, through: i, by: -1){ //상
//            y = j
//            prevValue = arr[x][y]
//            arr[x][y] = curValue
//            curValue = prevValue
//        }
//
//    }
//}
//
//for i in 0..<n{
//    print(arr[i].map{String($0)}.joined(separator: " "))
//}
