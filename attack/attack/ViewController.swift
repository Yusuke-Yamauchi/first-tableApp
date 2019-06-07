//
//  ViewController.swift
//  attack
//
//  Created by user on 2019/06/03.
//  Copyright © 2019 Yusuke Yamauchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageAttack: UIImageView!
    
    // UIImage インスタンスの生成
    var  imageName : UIImage = UIImage(named: "attak1")!
    
    
    // UIImageView 初期化
    
    @IBAction func attackButton(_ sender: UIButton) {
        
        
        for num in 1...20 {
            DispatchQueue.main.asyncAfter(deadline:DispatchTime.now()+0.1*Double(num)){
                self.imageAttack.image = UIImage(named : "attak\(num)")}
        }
       //     Thread.sleep(forTimeInterval: 0.1)
    
        
        
        //imageAttack.setImage(atkImage, for: .normal)

        
        // UIImageViewを追加
        //self.view.addSubview(imageAttack)
        
        
        
    }
    
}

