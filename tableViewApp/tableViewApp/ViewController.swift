//
//  ViewController.swift
//  tableViewApp
//
//  Created by user on 2019/06/02.
//  Copyright © 2019 Yusuke Yamauchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var textBox: UITextField!
    
    var text : [String] = []
  
    
    @IBAction func addButton(_ sender: UIButton) {
      //  let rootNum = UserDefaults.standard.object(forKey:"setRootNumKey") as! Int
        //Rootで何行目を参照したかを呼び出す｡※外に定義するとうまくいかない
        let RootRow = UserDefaults.standard.object(forKey:"setRootNumKey")!
        if UserDefaults.standard.object(forKey:"setkey\(RootRow)") != nil{
            text = UserDefaults.standard.object(forKey:"setkey\(RootRow)") as! [String]
            
            if textBox.text!.isEmpty == false{
                
                if text == [] {
                    text = [textBox.text!]
                }else{
                    text.append(textBox.text!)
                }
                
                UserDefaults.standard.set(text, forKey:"setkey\(RootRow)")
                
                self.navigationController?.popViewController(animated: true)
            }else{
               //popupを表示
                let alert = UIAlertController(title: "Error", message: "文字を入力して下さい｡", preferredStyle: UIAlertController.Style.alert)
                
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    }
        }else{
            if textBox.text!.isEmpty == false{
                    text = [textBox.text!]
                
                
                UserDefaults.standard.set(text, forKey:"setkey\(RootRow)")
                
                self.navigationController?.popViewController(animated: true)
            }
            
        }
        
        //        let storyboard: UIStoryboard = self.storyboard!
//        let nextView = storyboard.instantiateViewController(withIdentifier: "TVC") as! TableViewController
//        //nextView.modalTransitionStyle = .coverVertical
//        //nextView.modalTransitionStyle = .flipHorizontal
//        nextView.modalTransitionStyle = .crossDissolve
//        // nextView.modalTransitionStyle = .partialCurl
//        // ③画面遷移（presentメソッドを使う）
//        self.present(nextView, animated: true, completion: nil)
//         //self.dismiss(animated: true, completion: nil)
//
////        let cl = TableViewController()
        
//       if UserDefaults.standard.object(forKey:"setkey\(RootRow)") != nil{
        
//            cl.names = UserDefaults.standard.object(forKey:"setkey\(RootRow)") as! [String]
           // cl.tableView()
        
//        }
  // (UIApplication.sharedApplication().delegate as! ViewController).names
   
    
//    print(cl.names)
//UserDefaults.standard.set(cl.names, forKey:"setkey\(RootRow)")
        // self.navigationController?.popViewController(animated: true)


}
}

