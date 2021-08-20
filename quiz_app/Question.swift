//
//  Question.swift
//  quiz_app
//
//  Created by Sumiya.Ushiro on 2021/8/20.
//

import Foundation
struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
