//
//  ViewController.swift
//  CodePath PreWork Ilia Raiszadeh
//
//  Created by Ilia Raiszadeh on 8/9/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    @IBAction func changeTextColor(_ sender: UIButton) {
        let randomColor = changeColor()
        for label in [label1, label2, label3] {
                label?.textColor = randomColor
            }
    }
}

