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
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var setLimitButton: UIButton!
    @IBOutlet weak var limitResetButton: UIButton!
    @IBOutlet weak var counterResetButton: UIButton!
    var count:Int = 0
    var limit:Int! = 0
    override func viewDidLoad() {
        buttonEnabled(countUp: false, countReset: false, setLimit: true, resetLimit: false)
        self.LimitLabel.text = 0.description
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func buttonEnabled(countUp:Bool,countReset:Bool,setLimit:Bool,resetLimit:Bool){
        self.counterButton.isEnabled = countUp
        self.counterResetButton.isEnabled = countReset
        self.setLimitButton.isEnabled = setLimit
        self.limitResetButton.isEnabled = countReset
    }

    @IBAction func CountButton(_ sender: Any) {
        buttonEnabled(countUp: true, countReset: true, setLimit: false, resetLimit: false)
        if(count != limit! && count <= limit!){
        count = count + 1
        CountLabel.text = count.description
        }
    }
    
    @IBAction func LimitBiutton(_ sender: Any) {
        buttonEnabled(countUp: true, countReset: true, setLimit: false, resetLimit: false)
        if(LimitField.text != nil && LimitField.text != ""){
        LimitLabel.text = LimitField.text
        limit = Int(LimitField.text!)
        }
        
    }
    @IBAction func CountReset(_ sender: Any) {
        buttonEnabled(countUp: true, countReset: false, setLimit: false, resetLimit: true)
        CountLabel.text = 0.description
        count = 0
    }
    @IBAction func LimitReset(_ sender: Any) {
        buttonEnabled(countUp: false, countReset: false, setLimit: true, resetLimit: false)
        LimitLabel.text = 0.description
        LimitField.text = 0.description
        limit = 0
    }
}

