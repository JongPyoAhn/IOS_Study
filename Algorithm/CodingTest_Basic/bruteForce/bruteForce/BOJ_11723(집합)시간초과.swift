//
//  BOJ_.swift
//  bruteForce
//
//  Created by 안종표 on 2022/03/08.
//

//
//import Foundation
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
//        while now == 10
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
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
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//
//        while now != 10
//                && now != 32 && now != 0 {
//            str += String(bytes: [now], encoding: .ascii)!
//            now = read()
//        }
//
//        return str
//    }
//}
//
//
//let file = FileIO()
//
//
//let m = file.readInt()
//
//var bit = 0
//for _ in 0..<m{
//
//    let oper = file.readString()
//    let x = file.readInt()
//
//
//
//    if oper == "add"{
//        bit |= (1 << x)
//    }else if oper == "remove"{
//        bit &= ~(1 << x)
//    }else if oper == "check"{
//        if (bit & (1 << x) != 0){
//            print(1)
//        }else{
//            print(0)
//        }
//    }else if oper == "toggle"{
//        bit ^= (1 << x)
//    }else if oper == "all"{
//        bit |= (~0)
//    }else if oper == "empty"{
//        bit &= 0
//    }
//}
//
////switch oper{
////case "add":
////    bit |= (1 << x)
////    break
////case "remove":
////    bit &= ~(1 << x)
////    break
////case "check":
////    if (bit & (1 << x) != 0){
////        print(1)
////    }else{
////        print(0)
////    }
////    break
////case "toggle":
////    bit ^= (1 << x)
////    break
////case "all":
////    bit |= (~0)
////    break
////case "empty":
////    bit &= 0
////    break
////default:
////    break
////}
