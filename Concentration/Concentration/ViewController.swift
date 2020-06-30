//
//  ViewController.swift
//  Concentration
//
//  Created by minjung kang on 30/06/2020.
//  Copyright © 2020 ming. All rights reserved.
//

import UIKit //include와 같은 역할 UIKit : ios프레임워크(코코아터치 층)

//UIViewcontroller 클래스 : 슈퍼클래스, UIKit에 있음
class ViewController: UIViewController {
    
    var flipCount = 0{
        didSet{
              fliCountLabel.text = "Flips : \(flipCount)"
        } //속성감시자에 의해 아래 card마다 코드 안써줘도 됨
    }
    
    @IBOutlet weak var fliCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻", "🎃", "👻", "🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount+=1
        if let cardNumber = cardButtons.index(of: sender){
       flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
    }
        else {
            print("chosen card was not in cardButtons")
    //circle to 13line
    }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        //디버깅 해보기 print("flipCard(withEmoji : \(emoji))")
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5868047476, blue: 0, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
                       button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

