//
//  DetailsController.swift
//  music list exam
//
//  Created by Consultant on 8/28/22.
//

import UIKit

class DetailsController: UIViewController {

    var detailTitle = UILabel()
    var detailDescription = UILabel()
    var imageView = UIImageView()
    var safeArea: UILayoutGuide!
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        super.viewDidLoad()
        safeArea = view.layoutMarginsGuide
        view.addSubview(detailTitle)
        view.addSubview(detailDescription)
        view.addSubview(imageView)
        someTitleConstraints()
        someImageViewConstraints()
        someDescriptionConstraints()
    }
    
    func someImageViewConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 20).isActive = true
        imageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.5).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
    }
    
    func someTitleConstraints() {
        detailTitle.translatesAutoresizingMaskIntoConstraints = false
        detailTitle.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10).isActive = true
        detailTitle.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
        detailTitle.adjustsFontSizeToFitWidth = true
        detailTitle.textColor = .white
    }
    

    func someDescriptionConstraints() {
        detailDescription.numberOfLines = countLines(of: detailDescription, maxHeight: 180)
        detailDescription.translatesAutoresizingMaskIntoConstraints = false
        detailDescription.topAnchor.constraint(equalTo: detailTitle.bottomAnchor, constant: 10).isActive = true
        detailDescription.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
        detailDescription.textColor = .white
    }

    func countLines(of label: UILabel, maxHeight: CGFloat) -> Int {
        // viewDidLayoutSubviews() in ViewController or layoutIfNeeded() in view subclass
        guard let labelText = label.text else {
            return 0
        }
        
        let rect = CGSize(width: label.bounds.width, height: maxHeight)
        let labelSize = labelText.boundingRect(with: rect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: label.font!], context: nil)
        
        let lines = Int(ceil(CGFloat(labelSize.height) / label.font.lineHeight))
        return labelText.contains("\n") && lines == 1 ? lines + 1 : lines
   }
}
