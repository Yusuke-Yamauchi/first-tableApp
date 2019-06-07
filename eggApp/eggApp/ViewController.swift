//
//  ViewController.swift
//  eggApp
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

    @IBOutlet weak var labelTop: UILabel!
    
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
//      var img = UIImage(named: "egg02")
    
    var count : Int = 100
    let image2:UIImage = UIImage(named:"egg02")!
    let image3:UIImage = UIImage(named:"egg03")!
    
    
    @IBOutlet weak var buttonImage: UIButton!
    
    
    
    @IBAction func eggButtun(_ sender: UIButton) {
        if count > 0{
        count -= 1
       labelTop.text = String(count)
        }
        
        switch count {
        case 99 :
        textLabel.text = "がんばれがんばれ"
        case 75 :
        textLabel.text = "まだまだ"
        case 50 :
        textLabel.text = "半分"
            buttonImage.setImage(image2, for: .normal)
        case 25 :
        textLabel.text = "いける"
        case 0 :
            buttonImage.setImage(image3, for: .normal)
        textLabel.text = "上手にわれましたー"
    
        default :
        break
            }
    }
    
    
    
    
    
}

