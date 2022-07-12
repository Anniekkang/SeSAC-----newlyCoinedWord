//
//  ViewController.swift
//  newlyCoinedWord
//
//  Created by 나리강 on 2022/07/09.
//

//스위치, 함수리턴, 열거형 이용해서 고치기

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //outlet 연결하기(Label, Button, imageView)
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var questionButton: UIButton!
  
    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet var hashtagBugtton : [UIButton]!
    
    
//    @IBOutlet weak var hashtag1Button: UIButton!
//    @IBOutlet weak var hashtag2Button: UIButton!
//    @IBOutlet weak var hashtag3Button: UIButton!
//    @IBOutlet weak var hashtag4Button: UIButton!
//
//
    
    
    @IBOutlet var hashtagButtons : [UIButton]!
    
    
    let wordArray = ["애빼시", "킹받네", "갓생", "댕댕이", "쌉가능", "꾸안꾸"]
//    let contents = ["애교 빼면 시체","완전 열받는다는 뜻", "신(God)처럼 멋진 삶을 의미함","강아지를 의미","완전 가능하다는 뜻", "꾸민듯 안꾸민듯 꾸밈"  ]
    
 
//    let wordDictionary : [String:String] = ["애빼시":"애교 빼면 시체", "킹받네": "완전 열받는다는 뜻","갓생":"신(God)처럼 멋진 삶을 의미함",  "댕댕이": "강아지를 의미", "쌉가능":"완전 가능하다는 뜻", "꾸안꾸":"꾸민듯 안꾸민듯 꾸밈" ]
//
    var searchWord : [String] = []

        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //return 버튼이 ui버튼과 같이 작용하는 코드
        questionTextField.addTarget(self, action: #selector(performAction)
        , for: UIControl.Event.primaryActionTriggered)
        
        
        questionTextField.backgroundColor = UIColor.lightGray
        questionTextField.attributedPlaceholder = NSAttributedString(string: "신조어를 입력하시오", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        buttonSetup()
//        hashtagButtonSetup()
        labelSetup()
        
        answerImageView.backgroundColor = .purple
       
    
    
        
    }
    
    //return키를 눌렀을 때 uibutton의 검색을 눌렀을 때와 같은 작용
    @objc func performAction() {
        print(1)
        
 
        switch  questionTextField.text{
        case "꾸안꾸" :

            answerLabel.text = "꾸민듯 안꾸민듯 꾸밈"
            searchWord.append(questionTextField.text!)
            

        case "갓생" :
            answerLabel.text = "신(God)처럼 멋진 삶을 의미함"
            searchWord.append(questionTextField.text!)

        case "쌉가능" :
            answerLabel.text = "완전 가능하다는 뜻"
            searchWord.append(questionTextField.text!)

        case "댕댕이" :
            answerLabel.text = "강아지를 의미"
            searchWord.append(questionTextField.text!)

        case "애빼시" :
            answerLabel.text = "애교 빼면 시체"
            searchWord.append(questionTextField.text!)

        case "킹받다" :
            answerLabel.text = "완전 열받는다는 뜻"
            searchWord.append(questionTextField.text!)

        default :
            answerLabel.text = "다시 입력하시오"

        }
        questionTextField.resignFirstResponder()

        
        }

              
    
    
    func buttonSetup(){
        questionButton.layer.cornerRadius = 10
        questionButton.setTitle("검색", for: .normal)
        questionButton.setTitleColor(.white, for: .normal)
        questionButton.backgroundColor = .purple
        
        for count in 0...3 {
                hashtagButtons[count].setTitle("", for: .normal)
        }
        
        
        
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
        var count = 0
        switch  questionTextField.text{
        case "꾸안꾸" :

            answerLabel.text = "꾸민듯 안꾸민듯 꾸밈"
            searchWord.append(questionTextField.text!)
            hashtagButtons[count].setTitle(searchWord[count], for: .normal)
            searchWord.remove(at: 0)
            count += 1
            
           
        case "갓생" :
            answerLabel.text = "신(God)처럼 멋진 삶을 의미함"
            searchWord.append(questionTextField.text!)
            hashtagButtons[count].setTitle(searchWord[count], for: .normal)
            searchWord.remove(at: 0)
            count += 1

           
        case "쌉가능" :
            answerLabel.text = "완전 가능하다는 뜻"
            searchWord.append(questionTextField.text!)
            hashtagButtons[count].setTitle(searchWord[count], for: .normal)
            searchWord.remove(at: 0)
            count += 1

          

        case "댕댕이" :
            answerLabel.text = "강아지를 의미"
            searchWord.append(questionTextField.text!)
            hashtagButtons[count].setTitle(searchWord[count], for: .normal)
            searchWord.remove(at: 0)
            count += 1

            
        case "애빼시" :
            answerLabel.text = "애교 빼면 시체"
            searchWord.append(questionTextField.text!)
            hashtagButtons[count].setTitle(searchWord[count], for: .normal)
            searchWord.remove(at: 0)
            count += 1

           

        case "킹받다" :
            answerLabel.text = "완전 열받는다는 뜻"
            searchWord.append(questionTextField.text!)
            hashtagButtons[count].setTitle(searchWord[count], for: .normal)
            searchWord.remove(at: 0)
            count += 1


        default :
            answerLabel.text = "다시 입력하시오"

        }
        questionTextField.resignFirstResponder()
       
    }
       
        
}
    
    
    
    



       
  
 






