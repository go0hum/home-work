//
//  UIView+Ext.swift
//  fruits
//
//  Created by Consultant on 8/25/22.
//

import Foundation
import UIKit

extension UIView {
    func pin(_ superview:UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
    }
}
