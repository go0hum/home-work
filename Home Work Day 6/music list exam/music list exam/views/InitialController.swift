//
//  InitialController.swift
//  music list exam
//
//  Created by Consultant on 8/28/22.
//

import UIKit

class InitialController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTabButton()
    }
    
    @objc func loadTabButton() {
        // Create and present tab bar controller
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: ProjectsController())
        let vc2 = UINavigationController(rootViewController: ArtistsController())
        
        vc1.title = "Home"
        vc2.title = "Artists"
        
        tabBarVC.setViewControllers([vc1, vc2], animated: false)
        
        guard let items  = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house", "list.bullet"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}
