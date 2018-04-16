//
//  ViewController.swift
//  Quizzler
//
//  Created by Yousef Almassad.

import UIKit

class ViewController: UIViewController {
    
    let questionList : QuestionBank = QuestionBank();
    var pickedAnswer : Bool = false;
    var questionNumber : Int = 0;
    var score : Int = 0;
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = questionList.list[questionNumber];
        
        questionLabel.text = firstQuestion.questionText;
        updateUI();
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true;
        }
        else{
        pickedAnswer = false;
        }
        checkAnswer();
        
        questionNumber += 1;
        nextQuestion();
    }
    
    
    func updateUI() {
      
        scoreLabel.text = "Score: \(score)";
        progressLabel.text = "\(questionNumber+1) / \(questionList.list.count)";
        progressBar.frame.size.width = (view.frame.size.width / CGFloat (questionList.list.count)) * CGFloat (questionNumber+1) ;
    }
    

    func nextQuestion() {
        if questionNumber < questionList.list.count {
            
            questionLabel.text =  questionList.list[questionNumber].questionText;
            updateUI();
        }
        else{
            
            let alert = UIAlertController(title: "Wonderful", message: "You have finished the quiz with a score \(score) out of 15, do you wish to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver();
            })
            
            alert.addAction(restartAction);
            present(alert, animated: true, completion: nil);
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = questionList.list[questionNumber].answer;
    
        
        if pickedAnswer == correctAnswer{
            ProgressHUD.showSuccess("Currect :)");
            score += 1;
            updateUI();
        }
        else{
            ProgressHUD.showError("Wrong :(")
        }
    }
    
    
    func startOver() {
        
        score = 0;
        questionNumber = 0;
        nextQuestion();
    }
    

    
}
