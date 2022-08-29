//
//  ArtistTableViewCell.swift
//  music list exam
//
//  Created by Consultant on 8/28/22.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {
    var artistImageView = UIImageView()
    var artistTitle = UILabel()
    var artistDescription = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // call functions to setup cell
        addSubview(artistImageView)
        addSubview(artistTitle)
        addSubview(artistDescription)
        configureImageView()
        configureTitleLabel()
        setImageConsTraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // specific project pass
    func set(_ artist: Artist) {
        artistImageView.image = artist.image
        artistTitle.text = artist.title
        artistDescription.text = artist.description
    }
    
    func configureImageView() {
        artistImageView.layer.cornerRadius = 10
        artistImageView.clipsToBounds = true
    }
    
    func configureTitleLabel() {
        artistTitle.numberOfLines = 0
        artistTitle.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConsTraints() {
        artistImageView.translatesAutoresizingMaskIntoConstraints = false
        artistImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        artistImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        artistImageView.widthAnchor.constraint(equalTo: artistImageView.heightAnchor, multiplier: 16/9).isActive = true
        artistImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setTitleLabelConstraints() {
        artistTitle.translatesAutoresizingMaskIntoConstraints = false
        artistTitle.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        artistTitle.leadingAnchor.constraint(equalTo: artistImageView.trailingAnchor, constant: 20).isActive = true
        artistTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        artistTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
}
