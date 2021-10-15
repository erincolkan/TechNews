//
//  ContentDisplayerCollectionViewCell.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import UIKit

class ContentDisplayerCollectionViewCell: GenericCollectionViewCell<GenericDataProtocol, CardView> {
    
    override func setupView() {
        super.setupView()
        setViewConfigurations()
    }
    
    func setViewConfigurations() {
        backgroundColor = .white
        contentView.backgroundColor = .white
    }
    
}
