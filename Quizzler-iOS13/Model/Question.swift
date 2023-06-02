//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Erlangga Ardiansyah  on 01/06/23.
//  Copyright © 2023. All rights reserved.
//

import Foundation

/**
 Ini merupakan blueprint untuk membuat pertanyaan yang akan dibuat pada model QuizBrain
 **/

struct Question {
    let question: String
    let answer: String
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
}
