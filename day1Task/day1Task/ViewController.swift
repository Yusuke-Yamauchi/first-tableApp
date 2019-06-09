//
//  ViewController.swift
//  day1Task
//
//  Created by user on 2019/06/01.
//  Copyright © 2019 Yusuke Yamauchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var label: UILabel!
   

    @IBOutlet weak var leftText: UITextField!
    
    @IBOutlet weak var rightText: UITextField!
    
    //3つの値を出力する関数
    func unwrap() -> (judge:Int , left:Int , right:Int ){
        let leftString : String? = leftText.text
        let rightString : String? = rightText.text
        
//        値がnilでないか確認
        if Int(leftString!) != nil && Int(rightString!) != nil{
            let leftInt = Int(leftString!)!
            let rightInt = Int(rightString!)!
        return(1, leftInt , rightInt)
        }else{
           
            return(0,0,0)
        }
    }
    
    //偶数奇数表示関数
    func evenOdd (x:Int,judge:Int) -> String{
        if judge == 0 {
            return "error"
        }else if x%2 == 1 {
            return "[奇数]"
        }else{
            return "[偶数]"
        }
    }
    
    
    @IBAction func buttun(_ sender: UIButton) {
        let value  = unwrap()
        switch sender.tag {
        case 0 :
            let ans : Int = value.left+value.right
            let EvenOdd = evenOdd(x:ans,judge:value.judge)
            label.text = "\(EvenOdd) \(ans)"
        case 1 :
            let ans : Int = value.left-value.right
            let EvenOdd = evenOdd(x:ans,judge:value.judge)
               label.text = "\(EvenOdd) \(ans)"
        case 2 :
            let ans : Int = value.left*value.right
            let EvenOdd = evenOdd(x:ans,judge:value.judge)
           label.text = "\(EvenOdd) \(ans)"
        case 3 :
            let ans : Double = Double(value.left)/Double(value.right)
            let floorAns :Double = floor(ans)
            let ceilAns  : Double = ceil(ans)
            if floorAns == ceilAns {
                let ansInt = Int(ans)
                if ansInt % 2 == 1{
                    label.text = "[奇数]　\(String(ansInt))"
                }else{
                    
                    label.text = "[偶数]　\(String(ansInt))"
                }
            }else{
                label.text = "[小数]　\(String(ans))"
            }
            
            
        
        default : break
        }
      
       
    }


@IBAction func clear(_ sender: Any) {
    label.text = ""
}


    
    @IBAction func divide(_ sender: Any) {
        
          let value  = unwrap()
        
            let ans : Double = Double(value.left)/Double(value.right)
        
}
    
}

