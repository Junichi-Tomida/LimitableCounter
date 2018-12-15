//
//  ViewController.swift
//  LimitableCounter
//
//  Created by 冨田純一 on 2018/12/15.
//  Copyright © 2018 infoprax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CountLabel: UILabel!
    @IBOutlet weak var LimitLabel: UILabel!
    @IBOutlet weak var LimitField: UITextField!
    var count:Int = 0
    var limit:Int! = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func CountButton(_ sender: Any) {
        if(count != limit!){
        count = count + 1
        CountLabel.text = count.description
        }
    }
    
    @IBAction func LimitBiutton(_ sender: Any) {
        LimitLabel.text = LimitField.text
        limit = Int(LimitField.text!)
        
    }
}

