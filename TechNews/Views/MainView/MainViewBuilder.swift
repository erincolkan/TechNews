//
//  MainViewFactory.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import UIKit

class MainViewBuilder {
    class func build() -> UIViewController {
        let mainFormatter = MainViewDataImplementation()
        let manager = NewsOperationManager.shared
        let viewModel = MainViewModel(formatter: mainFormatter, operationManager: manager)
        let viewController = MainViewController(viewModel: viewModel)
        viewController.title = "Apple News"
        
        return viewController
    }
    
}
