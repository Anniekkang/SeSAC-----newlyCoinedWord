//
//  ViewController.swift
//  newlyCoinedWord
//
//  Created by 나리강 on 2022/07/09.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //outlet 연결하기(Label, Button, imageView)
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var questionButton: UIButton!
  
    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var hashtagButton: UIButton!
    @IBOutlet weak var hashtag2Button: UIButton!
    @IBOutlet weak var hashtag3Button: UIButton!
    @IBOutlet weak var hashtag4Button: UIButton!
    
    
    
    let wordArray = ["애빼시", "킹받네", "갓생", "댕댕이", "쌉가능", "꾸안꾸"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //return 버튼이 ui버튼과 같이 작용하는 코드
        questionTextField.addTarget(self, action: #selector(performAction)
        , for: UIControl.Event.primaryActionTriggered)
        
        
        questionTextField.backgroundColor = UIColor.lightGray
        questionTextField.attributedPlaceholder = NSAttributedString(string: "신조어를 입력하시오", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        buttonSetup()
        hashtagButtonSetup()
        labelSetup()
        
        answerImageView.backgroundColor = .purple
        
    }
    
    //return키를 눌렀을 때 uibutton의 검색을 눌렀을 때와 같은 작용
    @objc func performAction() {
        print(1)
        
              //action events
              switch  questionTextField.text{
              case "꾸안꾸" :

                  answerLabel.text = "꾸민듯 안꾸민듯 꾸밈"

              case "갓생" :
                  answerLabel.text = "신(God)처럼 멋진 삶을 의미함"

              case "쌉가능" :
                  answerLabel.text = "완전 가능하다는 뜻"

              case "댕댕이" :
                  answerLabel.text = "강아지를 의미"

              case "애빼시" :
                  answerLabel.text = "애교 빼면 시체"

              case "킹받다" :
                  answerLabel.text = "완전 열받는다는 뜻"

              default :
                  answerLabel.text = "다시 입력하시오"

              }
    }
    
    func buttonSetup(){
        questionButton.layer.cornerRadius = 10
        questionButton.setTitle("검색", for: .normal)
        questionButton.setTitleColor(.white, for: .normal)
        questionButton.backgroundColor = .purple
        
    }
    
    func hashtagButtonSetup(){
        hashtagButton.setTitle("#\(wordArray.randomElement()!)", for: .normal)
        hashtagButton.setTitleColor(.purple, for: .normal)
        hashtag2Button.setTitle("#\(wordArray.randomElement()!)", for: .normal)
        hashtag2Button.setTitleColor(.purple, for: .normal)
        hashtag3Button.setTitle("#\(wordArray.randomElement()!)", for: .normal)
        hashtag3Button.setTitleColor(.purple, for: .normal)
        hashtag4Button.setTitle("#\(wordArray.randomElement()!)", for: .normal)
        hashtag4Button.setTitleColor(.purple, for: .normal)
        
    }
    
    func labelSetup(){
        logoLabel.text = "무물!"
        logoLabel.textColor = .black
        logoLabel.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        
        answerLabel.textColor = .white
        answerLabel.textAlignment = .center
        answerLabel.text = "신조어를 알려드려요 :)"
        
        
    }


    @IBAction func questionbuttonTapped(_ sender: UIButton) {
        
        print(2)
        
        switch  questionTextField.text{
        case "꾸안꾸" :

            answerLabel.text = "꾸민듯 안꾸민듯 꾸밈"

        case "갓생" :
            answerLabel.text = "신(God)처럼 멋진 삶을 의미함"

        case "쌉가능" :
            answerLabel.text = "완전 가능하다는 뜻"

        case "댕댕이" :
            answerLabel.text = "강아지를 의미"

        case "애빼시" :
            answerLabel.text = "애교 빼면 시체"

        case "킹받다" :
            answerLabel.text = "완전 열받는다는 뜻"

        default :
            answerLabel.text = "다시 입력하시오"
            
        }
        questionButton.resignFirstResponder()

    
    }
    
    @IBAction func hashtagButtonAction(_ sender: UIButton) {
        
    }
       
    @IBAction func tapgestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    @IBAction func textFieldAction(_ sender: Any) {
    
        questionTextField.resignFirstResponder()
        
    }
    
    

   
}

