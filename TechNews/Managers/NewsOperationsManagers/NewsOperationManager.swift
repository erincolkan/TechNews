//
//  NewsOperationManager.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation
import RxSwift
import DefaultNetworkOperationPackage

typealias GnewsListResult = Result<GNewsResponse, ErrorResponse>
typealias GnewsResultBlock = (Result<GNewsResponse, ErrorResponse>) -> Void

class NewsOperationManager: NewsOperationsProtocol {
    public static let shared = NewsOperationManager()
    
    private init() {}
    
    private let dataPublishSubject = PublishSubject<GnewsListResult>()
    private let dataFlowSubject = PublishSubject<Bool>()
    
    func getNews(baseUrl: String) {
        fireApiCall(baseUrl: baseUrl, with: apiCallHandler)
    }
    
    func subscribeDataPublisher(with completion: @escaping GnewsResultBlock) -> Disposable {
        return dataPublishSubject.subscribe(onNext: completion)
    }
    
    func subscribeDataFlow(with completion: @escaping (Bool) -> Void) -> Disposable {
        return dataFlowSubject.subscribe(onNext: completion)
    }
    
    private func fireApiCall(baseUrl: String , with completion: @escaping GnewsResultBlock) {
        dataFlowSubject.onNext(false)
        
        do {
            let urlRequest = try ServiceProvider(baseUrl: baseUrl).returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("error: \(error)")
        }
    }
    
    private lazy var apiCallHandler: GnewsResultBlock = { [weak self] result in
        self?.dataPublishSubject.onNext(result)
        self?.dataFlowSubject.onNext(true)
    }
}
