//
//  ViewController.swift
//  segue
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segueDestination = segue.destination as! ViewControllerA
        segueDestination.passTextSegue = "Hello World"
    }
}

