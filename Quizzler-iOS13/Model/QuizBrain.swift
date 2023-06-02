//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Erlangga Ardiansyah  on 01/06/23.
//  Copyright © 2023. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(question: "Four + Five is Equal to Zero?", answer: "False"),
        Question(question: "One + One is greater than Two?", answer: "False"),
        Question(question: "Three - One is less than Four?", answer: "True"),
    ]
    
    var numberQuestion = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[numberQuestion].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[numberQuestion].question
    }
    
    func getProgressBar() -> Float {
        var percentage = Float(numberQuestion + 1) / Float(quiz.count)
        return percentage
    }
    
    // Mutating digunakan ketika ada variable dalam struct yang ingin dirubah
    mutating func nextQuestion() {
        if numberQuestion + 1 < quiz.count {
            numberQuestion += 1
        } else {
            numberQuestion = 0
            score = 0
        }
    }
    
}
