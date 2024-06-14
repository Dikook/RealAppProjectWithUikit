//
//  ViewController.swift
//  RealAppProjectWithUikit
//
//  Created by Diar Orynbek on 13.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var babeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        babeLabel.text = "Hello, World@"
        babeLabel.textColor = .blue
        
        button.backgroundColor = .green
        button.clipsToBounds = true
        button.setTitle("Touch me", for: .normal)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        babeLabel.textColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor {
         // Generate between 0 to 1
         let red: CGFloat = CGFloat(drand48())
         let green: CGFloat = CGFloat(drand48())
         let blue: CGFloat = CGFloat(drand48())

         return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

