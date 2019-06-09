//
//  ViewController.swift
//  marubatsuApp
//
//  Created by user on 2019/06/08.
//  Copyright © 2019 Yusuke Yamauchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showQuestion()
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    var currentQuestionNum : Int = 0
    var numberOfCorrect : Int = 0
    
    var questions: [[String:Any]] = [
        [
            "question": "iPhoneアプリを開発する統合環境はZcodeである",
            "answer": false
        ],
        [
            "question": "Xcode画面の右側にはユーティリティーズがある",
            "answer": true
        ],
        [
            "question": "UILabelは文字列を表示する際に利用する",
            "answer": true
        ]
    ]
    
    
    func showQuestion() {
        //問題番号
        let question = questions[currentQuestionNum]
        if let que = question["question"] as? String {
            questionLabel.text = que
        }
        
        
    }
    
    func checkAnswer(yourAnswer: Bool) {
         let question = questions[currentQuestionNum]
        if let ans = question["answer"] as? Bool {
            if yourAnswer == ans{
                //正解したら次の問題
                  showAlert(message: "正解!")
                currentQuestionNum += 1
                numberOfCorrect += 1
              
            }else{
              showAlert(message: "不正解!")
                currentQuestionNum += 1
             
            }
            
        }else{
            print("答えがありません")
            return
        }
        if currentQuestionNum >= questions.count{
           
            currentQuestionNum = 0
            print("\(questions.count)問中\(numberOfCorrect)問正解です")
            numberOfCorrect = 0
        }
        
        showQuestion()
        
    }
    
    func showAlert(message:String){
        
       let alert = UIAlertController(title: nil , message: message, preferredStyle: .alert)
    
       let close = UIAlertAction(title: "close", style: .cancel, handler: nil)
        
        alert.addAction(close)
        
        present(alert, animated: true, completion: nil)
        
    }
   
    
    
    @IBAction func tapYes(_ sender: UIButton) {
    print(questions)
    checkAnswer(yourAnswer: true)
        
    }
    
    @IBAction func tapNo(_ sender: UIButton) {
    checkAnswer(yourAnswer: false)
    }
    
    
 
    
    
}

