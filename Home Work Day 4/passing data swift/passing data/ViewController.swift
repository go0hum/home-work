//
//  ViewController.swift
//  passing data
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class ViewController: UIViewController {
    let vc = ViewControllerA()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onButtonTap(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "viewControllerA") as! ViewControllerA
        vc.passText = "Hello World"
        present(vc, animated: true, completion: nil)
    }
}

