//
//  main.swift
//  Programmers
//
//  Created by 안종표 on 2022/05/07.
//

import Foundation

func solution(_ alp:Int, _ cop:Int, _ problems:[[Int]]) -> Int {
    var myAlp = alp
    var myCop = cop
    let problem = problems.sorted{
        if $0[0] == $1[0]{
            return $0[1] < $1[1]
        }else{
            return $0[0] < $1[0]
        }
    }
    var time = 0
    
    
    for i in stride(from: 0, to: problem.count - 1, by: 1){
        while true{
            if problem[i + 1][0] <= myAlp && problem[i + 1][1] <= myCop{
                break
            }
            let alpReq = problem[i][0] //문제푸는데 필요한 알고력
            let copReq = problem[i][1] //문제푸는데 필요한 코딩력
            //알고력 코딩력이 0만오를 수 도있음.
            let alpRwd = problem[i][2] //문제를 풀었을때 증가하는 알고력
            let copRwd = problem[i][3] //문제를 풀었을때 증가하는 코딩
            let cost = problem[i][4] //문제를 푸는데 드는 시간
            if (copRwd / cost) < 1 
            
            //알고력만 부족한경우
            if problem[i + 1][0] > myAlp && problem[i + 1][1] <= myCop{
                if (alpRwd / cost) < 1 {
                    myAlp += 1
                    time += 1
                }else{
                    //문제를 푼다.
                    if myAlp >= alpReq && myCop >= copReq{
                        myAlp += alpRwd
                        myCop += copRwd
                        time += cost
                    }
                }
            }//코딩력만 부족한경우
            else if problem[i + 1][1] > myCop && problem[i + 1][0] <= myAlp{
                if (copRwd / cost) < 1 {
                    myCop += 1
                    time += 1
                }else{
                    //문제를 푼다.
                    if myAlp >= alpReq && myCop >= copReq{
                        myAlp += alpRwd
                        myCop += copRwd
                        time += cost
                    }
                }
            }else{//둘다 부족한경우
                //현재 코딩력에 둘 다 부족한경우
                if myAlp < alpReq{
                    myAlp += 1
                    time += 1
                }
                if myCop < copReq{
                    myCop += 1
                    time += 1
                }
                
                //문제를 푼다.
                if myAlp >= alpReq && myCop >= copReq{
                    myAlp += alpRwd
                    myCop += copRwd
                    time += cost
                    print(time)
                }
            }
            
            
        }
                
    }
    return time
}
print(solution(0, 0, [[0,0,2,1,2],[4,5,3,1,2],[4,11,4,0,2],[10,4,0,4,2]]))
