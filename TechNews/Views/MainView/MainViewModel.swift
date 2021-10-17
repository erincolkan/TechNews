//
//  MainViewModel.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation
import RxSwift
import UIKit

class MainViewModel {
    deinit {
        print("deinitialized...")
    }
    
    private let disposeBag = DisposeBag()
    
    private var data: GNewsResponse?
    private var state: MainViewStateBlock?
    
    private var formatter: MainViewDataFormatter
    private let operationManager: NewsOperationsProtocol
    
    init(formatter: MainViewDataFormatter, operationManager: NewsOperationsProtocol) {
        self.formatter = formatter
        self.operationManager = operationManager
        subscribeOperationManagerPublisher()
    }
    
    func subscribeState(completion: @escaping MainViewStateBlock) {
        state = completion
    }
    
    func getNews() {
        state?(.loading)
        operationManager.getNews(baseUrl: RequestUrls.apple.value)
    }
    
    private func dataHandler(with response: GNewsResponse) {
        data = response
        state?(.success)
    }
    
    private func subscribeOperationManagerPublisher() {
        operationManager.subscribeDataPublisher { [weak self] result in
            switch result {
            case .failure(let error):
                print("error: \(error)")
            case .success(let response):
                self?.dataHandler(with: response)
            }
        }.disposed(by: disposeBag)
    }
    
}

extension MainViewModel: ItemCollectionComponentDelegate {
    func refreshCollectionView() {
        getNews()
    }
    
    func getData(at index: Int) -> GenericDataProtocol? {
        return formatter.getItem(from: data?.articles[index])
    }
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getItemCount(in section: Int) -> Int {
        guard let count = data?.articles.capacity else { return 0 }
        return count - 1
    }

    //TODO
    func selectedItem(at index: Int) {
        guard let dataUnwrapped = data else { return }
        UIApplication.shared.open(URL(string: dataUnwrapped.articles[index].url)!, options: [:], completionHandler: nil)
    }
    
    
}


