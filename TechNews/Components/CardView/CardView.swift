//
//  CardView.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 11.10.2021.
//

import UIKit

class CardView: GenericBaseView<GenericDataProtocol> {
    private lazy var shadowContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = 4
        view.layer.shadowOpacity = 0.4
        view.layer.cornerRadius = 6
        
        return view
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [imageContainer, newsBodyComponent])
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        temp.isUserInteractionEnabled = true
        temp.alignment = .fill
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 5
        
        return temp
    }()
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.layer.cornerRadius = 6
        view.clipsToBounds = true
        view.backgroundColor = ColorHelper.backgroundColor.value
        
        return view
    }()
    
    
    private lazy var imageContainer: CustomImageViewComponentContainer = {
        let temp = CustomImageViewComponentContainer()
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        temp.layer.cornerRadius = 2
        temp.clipsToBounds = true
        
        return temp
    }()
    
    private lazy var newsBodyComponent: NewsBodyComponent = {
        let temp = NewsBodyComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        return temp
    }()
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() as? CardViewData else { return }
        newsBodyComponent.setData(by: data.newsBodyData)
        imageContainer.setData(by: data.imageData)
    }
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addComponents()
    }
    
    private func addComponents() {
        addSubview(shadowContainerView)
        shadowContainerView.addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
        
            shadowContainerView.topAnchor.constraint(equalTo: topAnchor),
            shadowContainerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            shadowContainerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowContainerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            containerView.topAnchor.constraint(equalTo: shadowContainerView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: shadowContainerView.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: shadowContainerView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: shadowContainerView.trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)

        ])
    }
}
