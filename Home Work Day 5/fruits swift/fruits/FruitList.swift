//
//  FruitList.swift
//  fruits
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class FruitList: UIViewController {
    
    var tableView = UITableView()
    var fruits: [Fruit] = []
    let fruitCell = "fruitCell"
    
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        title = "Fruits"
        configureTableView()
        setTableViewDelegates()
        fruits = fetchData()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func configureTableView() {
        view.addSubview(tableView)
        tableView.rowHeight = 100
        tableView.register(FruitTableViewCell.self, forCellReuseIdentifier: fruitCell)
        tableView.pin(view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension FruitList: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: fruitCell) as! FruitTableViewCell
        
        let fruit = fruits[indexPath.row]
        cell.set(fruit)
        
        return cell
    }
}

extension FruitList {
    func fetchData() -> [Fruit] {
        let fruits = [
            Fruit(image: Images.apple, title: "Apple"),
            Fruit(image: Images.banana, title: "Banana"),
            Fruit(image: Images.cantaloupe, title: "Cantaloupe"),
            Fruit(image: Images.grape, title: "Grape"),
            Fruit(image: Images.kiwi, title: "Kiwi"),
            Fruit(image: Images.lemon, title: "Lemon"),
            Fruit(image: Images.papaya, title: "Papaya"),
            Fruit(image: Images.pear, title: "Pear"),
            Fruit(image: Images.pinneaple, title: "Pinneaple"),
            Fruit(image: Images.watermelon, title: "Watermelon")
        ]
        
        return fruits
    }
}
