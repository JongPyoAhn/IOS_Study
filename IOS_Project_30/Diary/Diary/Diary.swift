//
//  Diary.swift
//  Diary
//
//  Created by 안종표 on 2021/12/30.
//

import UIKit

struct Diary {
    var uuidString: String //일기를 생성할때마다 고유한 uuid값 넣을거.
    var title: String
    var contents: String
    var date: Date
    var isStart: Bool
}
