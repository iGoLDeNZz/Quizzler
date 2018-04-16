//
//  Question.swift
//  Quizzler
//
//  Created by Yousef Almusad on 7/4/1439 AH.
//  Copyright © 1439 London App Brewery. All rights reserved.
//

import Foundation

class Question{
    
    let questionText: String;
    let answer: Bool;
    
    init(question: String, currectAnswer: Bool){
        questionText = question;
        answer = currectAnswer;
    }
}
