//
//  ViewController.swift
//  Guess0208
//
//  Created by lulu on 2019/2/8.
//  Copyright © 2019 lulu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion ()
        Aimage.isHidden = true

    }
    struct Qna{
        var question = ""
        var answer = ""
    }
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var Aimage: UIImageView!
    
    var count = 0
    var qnaArray = [Qna(question:"四分五裂(猜台灣地名)?",answer:"九份。"),Qna(question:"鼠頭虎尾(猜一字)？",answer:"兒。"),Qna(question:"早不說晚不說（猜一字）？",answer:"許。"),Qna(question:"最懶惰和最勤勞的數字（猜一成語）？ ",answer:"一不作二不休。"),Qna(question:"Hello Kitty 售罄（猜一地名）？",answer:"貓空。"),Qna(question:"兩好球三壞球(猜台灣地名)？",answer:"南投。 "),Qna(question:"半個月亮(猜一字)？",answer:"胖。"),Qna(question:"開張大吉(猜地名)？",answer:"新店。"),Qna(question:"雨後春筍(猜地名)？",answer:"新竹。"),Qna(question:"打電話給烏龜  (猜一蔬菜)？",answer:"苦瓜(Call 龜)。")]
    
    
    @IBAction func answerBt(_ sender: Any) {
        answerLabel.isHidden = false
        Aimage.isHidden = false
    }
    
    @IBAction func nextBt(_ sender: Any) {
        count += 1
        if count == 10{
            count = 0
        }
        nextQuestion()
    }
    
    func nextQuestion() {
        questionLabel.text = qnaArray[count].question
        answerLabel.text = qnaArray[count].answer
        countLabel.text = "\(count+1)"
        answerLabel.isHidden = true
        Aimage.isHidden = true
    }
}

