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
        
        if UserDefaults.standard.object(forKey:"setkey") != nil{
            text = UserDefaults.standard.object(forKey:"setkey") as! [String]
            
            if textBox.text!.isEmpty == false{
                
                if text == [] {
                    text = [textBox.text!]
                }else{
                    text.append(textBox.text!)
                }
                
                UserDefaults.standard.set(text, forKey:"setkey")
                
                self.navigationController?.popViewController(animated: true)
            }
        }else{
            if textBox.text!.isEmpty == false{
                    text = [textBox.text!]
                
                
                UserDefaults.standard.set(text, forKey:"setkey")
                
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
        
//       if UserDefaults.standard.object(forKey:"setkey") != nil{
        
//            cl.names = UserDefaults.standard.object(forKey:"setkey") as! [String]
           // cl.tableView()
        
//        }
  // (UIApplication.sharedApplication().delegate as! ViewController).names
   
    
//    print(cl.names)
//UserDefaults.standard.set(cl.names, forKey:"setkey")
        // self.navigationController?.popViewController(animated: true)


}
}

