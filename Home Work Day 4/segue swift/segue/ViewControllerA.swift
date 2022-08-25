//
//  ViewControllerA.swift
//  segue
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class ViewControllerA: UIViewController {

    var passTextSegue = ""
    @IBOutlet weak var display: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = passTextSegue
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
