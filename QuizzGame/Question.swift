//
//  Question.swift
//  QuizzGame
//
//  Created by Victor Doyle on 6/23/21.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
