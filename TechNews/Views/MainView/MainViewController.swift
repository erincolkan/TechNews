//
//  MainViewController.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import UIKit

class MainViewController : BaseViewController<MainViewModel> {
    private var newsCollectionView: ItemCollectionComponent!
        
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        
        subscribeViewModelListeners()
        addNewsComponent()
        viewModel.getNews()
    }
    
    private func addNewsComponent() {
        newsCollectionView = ItemCollectionComponent()
        newsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        newsCollectionView.setupDelegation(with: viewModel)
        
        view.addSubview(newsCollectionView)
        NSLayoutConstraint.activate([
            newsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newsCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newsCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            newsCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func subscribeViewModelListeners() {
        viewModel.subscribeState { [weak self] state in
            switch state {
            case .success:
                print("data is ready")
                self?.newsCollectionView.reloadCollectionComponent()
            case .loading:
                print("data is getting")
            case .failure:
                print("errror")
                // show alert popup
            }
        }
    }
}



