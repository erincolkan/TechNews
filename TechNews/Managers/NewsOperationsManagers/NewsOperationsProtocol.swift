//
//  NewsOperationsProtocol.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation
import RxSwift

protocol NewsOperationsProtocol {
    func getNews(baseUrl: String)
    
    func subscribeDataPublisher(with completion: @escaping GnewsResultBlock) -> Disposable
    
    func subscribeDataFlow(with completion: @escaping (Bool) -> Void) -> Disposable
}

