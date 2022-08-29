//
//  ProjectTableViewCell.swift
//  music list exam
//
//  Created by Consultant on 8/28/22.
//

import UIKit

class ProjectTableViewCell: UITableViewCell {
    var projectImageView = UIImageView()
    var projectTitle = UILabel()
    var projectDescription = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // call functions to setup cell
        addSubview(projectImageView)
        addSubview(projectTitle)
        configureImageView()
        configureTitleLabel()
        setImageConsTraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // specific project pass
    func set(_ project: Project) {
        projectImageView.image = project.image
        projectTitle.text = project.title
        projectDescription.text = project.description
    }
    
    func configureImageView() {
        projectImageView.layer.cornerRadius = 10
        projectImageView.clipsToBounds = true
    }
    
    func configureTitleLabel() {
        projectTitle.numberOfLines = 0
        projectTitle.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConsTraints() {
        projectImageView.translatesAutoresizingMaskIntoConstraints = false
        projectImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        projectImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        projectImageView.widthAnchor.constraint(equalTo: projectImageView.heightAnchor, multiplier: 16/9).isActive = true
        projectImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setTitleLabelConstraints() {
        projectTitle.translatesAutoresizingMaskIntoConstraints = false
        projectTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        projectTitle.leadingAnchor.constraint(equalTo: projectImageView.trailingAnchor, constant: 20).isActive = true
        projectTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        projectTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
}
