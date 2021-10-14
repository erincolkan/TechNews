//
//  NewsBodyComponent.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 10.10.2021.
//

import Foundation
import UIKit

class NewsBodyComponent: GenericBaseView<NewsBodyComponentData> {
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel, sourceNameLabel, ])
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 15
        
        return temp
    }()
    
    private lazy var titleLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        temp.textColor = .black
        temp.text = " "
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.title.value
        
        return temp
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        temp.textColor = .black
        temp.text = " "
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        temp.contentMode = .center
        temp.textAlignment = .left
        temp.font = FontManager.description.value
        
        return temp
    }()
    
    private lazy var sourceNameLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        temp.textColor = .gray
        temp.text = " "
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 1
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.source.value
        
        return temp
    }()
    
    private lazy var dateLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        temp.textColor = .gray
        temp.text = " "
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 1
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.source.value
        
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addLabelComponents()
    }
    
    func addLabelComponents() {
        addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
        
        
        ])
    }
    
    override func loadDataView() {
        guard let data = returnData() else { return }
        
    }
    
    
}
