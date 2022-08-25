//
//  ViewController.swift
//  list
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewController: UIViewController {
    let vc = TableViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
        vc.groceryList = ["apples", "papaya", "tomatoes", "carrots", "eggs", "bread", "cheese", "milk", "coffee"]
        navigationController?.pushViewController(vc, animated: true)
    }
}

