//
//  ProjectsController.swift
//  music list exam
//
//  Created by Consultant on 8/28/22.
//

import UIKit

class ProjectsController: UIViewController {
    
    var tableView = UITableView()
    var projects: [Project] = []
    let projectCell = "projectCell"

    override func viewDidLoad() {
        title = "Projects"
        
        configureTableView()
        setTableViewDelegates()
        projects = fetchData()
        
        super.viewDidLoad()
    }

    func configureTableView() {
        view.addSubview(tableView)
        tableView.rowHeight = 100
        tableView.register(ProjectTableViewCell.self, forCellReuseIdentifier: projectCell)
        tableView.pin(view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ProjectsController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: projectCell) as! ProjectTableViewCell
        let project = projects[indexPath.row]
        cell.set(project)
        return cell
    }
}

extension ProjectsController {
    func fetchData() -> [Project] {
        let projects = [
            Project(image: Projects.angular, title: "Angular", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.codeigniter, title: "Codeigniter", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.golang, title: "Golang", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.laravel, title: "Laravel", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.next, title: "Next", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.nodejs, title: "Node js", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.python, title: "Python", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.react, title: "React", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.swift, title: "Swift", description: "Lenguaje de codigo abierto"),
            Project(image: Projects.symfony, title: "Symfony", description: "Lenguaje de codigo abierto")
        ]
        
        return projects
    }
}
