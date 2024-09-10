//
//  SecondViewController.swift
//  ManzhosovAV_HW 2.5.1
//
//  Created by Александр Манжосов on 10.09.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hello " + name
    }

}
