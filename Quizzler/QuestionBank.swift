//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Yousef Almusad on 7/6/1439 AH.
//  Copyright © 1439 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var list = [Question]();
    
    init(){
        //We have 15 questions in total in the list
        
        // Creating a quiz item and appending it to the list
        let item = Question(question: "Kiwi is a type of bird.", currectAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(question: "A slug\'s blood is green.", currectAnswer: true))
        
        list.append(Question(question: "iPhone X\'s price is overrated.", currectAnswer: false))
        
        list.append(Question(question: "Metal Gear is the best game ever created", currectAnswer: true))
        
        list.append(Question(question: "Approximately one quarter of human bones are in the feet.", currectAnswer: true))
        
        list.append(Question(question: "The total surface area of two human lungs is approximately 70 square metres.", currectAnswer: true))
        
        list.append(Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", currectAnswer: true))
        
        list.append(Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", currectAnswer: false))
        
        list.append(Question(question: "It is illegal to pee in the Ocean in Portugal.", currectAnswer: true))
        
        list.append(Question(question: "You can lead a cow down stairs but not up stairs.", currectAnswer: false))
        
        list.append(Question(question: "Google was originally called \"Backrub\".", currectAnswer: true))
        
        list.append(Question(question: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", currectAnswer: true))
        
        list.append(Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", currectAnswer: false))
        
        list.append(Question(question: "No piece of square dry paper can be folded in half more than 7 times.", currectAnswer: false))
        
        list.append(Question(question: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", currectAnswer: true))
    }
    
}
