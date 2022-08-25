//
//  FruitTableViewCell.swift
//  fruits
//
//  Created by Consultant on 8/25/22.
//

import Foundation
import UIKit

class FruitTableViewCell: UITableViewCell {
    var fruitImageView = UIImageView()
    var fruitTitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(fruitImageView)
        addSubview(fruitTitle)
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(_ fruit: Fruit) {
        fruitImageView.image = fruit.image
        fruitTitle.text = fruit.title
    }
    
    func configureImageView() {
        fruitImageView.layer.cornerRadius = 10
        fruitImageView.clipsToBounds = true
    }
    
    func configureTitleLabel() {
        fruitTitle.numberOfLines = 0
        fruitTitle.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        fruitImageView.translatesAutoresizingMaskIntoConstraints = false
        fruitImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fruitImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        fruitImageView.widthAnchor.constraint(equalTo: fruitImageView.heightAnchor, multiplier: 16/9).isActive = true
        fruitImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setTitleLabelConstraints() {
        fruitTitle.translatesAutoresizingMaskIntoConstraints = false
        fruitTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        fruitTitle.leadingAnchor.constraint(equalTo: fruitImageView.trailingAnchor, constant: 20).isActive = true
        fruitTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        fruitTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
}
