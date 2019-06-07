//
//  ViewControllerEdit.swift
//  tableViewApp
//
//  Created by user on 2019/06/06.
//  Copyright © 2019 Yusuke Yamauchi. All rights reserved.
//

import UIKit

class ViewControllerEdit: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        //Rootで何行目を参照したかを呼び出す｡※外に定義するとうまくいかない
        let RootRow = UserDefaults.standard.object(forKey:"setRootNumKey")!
        if UserDefaults.standard.object(forKey:"setkey\(RootRow)") != nil && UserDefaults.standard.object(forKey:"setNumKey") != nil {
            
            let show = UserDefaults.standard.object(forKey:"setkey\(RootRow)") as! [String]
            let    cellNumber = UserDefaults.standard.object(forKey:"setNumKey") as! Int
            textField.text = show[cellNumber]
        }
        
    }
    
    var text : [String] = [""]
    

    
    
    @IBOutlet weak var textField: UITextField!
    let cl = TableViewController()
    
    
    
    @IBAction func button(_ sender: UIButton) {
        //Rootで何行目を参照したかを呼び出す｡※外に定義するとうまくいかない
        let RootRow = UserDefaults.standard.object(forKey:"setRootNumKey")!
       
        if UserDefaults.standard.object(forKey:"setkey\(RootRow)") != nil && UserDefaults.standard.object(forKey:"setNumKey") != nil {
            
            text = UserDefaults.standard.object(forKey:"setkey\(RootRow)") as! [String]
        
            let    cellNumber = UserDefaults.standard.object(forKey:"setNumKey") as! Int
            if textField.text!.isEmpty == false{
                text[cellNumber] = textField.text!
            
            
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
        
        
        }
//            let storyboard: UIStoryboard = self.storyboard!
//            let nextView = storyboard.instantiateViewController(withIdentifier: "TVC") as! TableViewController
//            //nextView.modalTransitionStyle = .coverVertical
//            //nextView.modalTransitionStyle = .flipHorizontal
//            nextView.modalTransitionStyle = .crossDissolve
//            // nextView.modalTransitionStyle = .partialCurl
//            // ③画面遷移（presentメソッドを使う）
//            self.present(nextView, animated: true, completion: nil)
//        let viewController2: TableViewController = self.storyboard?.instantiateViewController(withIdentifier: "next") as! TableViewController
//
//        viewController2.names = text
//
//       self.navigationController?.pushViewController(viewController2, animated: true)
            
        }
        
        
        
        
    }

