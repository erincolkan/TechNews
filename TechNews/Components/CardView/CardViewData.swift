//
//  CardViewData.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

class CardViewData: GenericDataProtocol {
    private(set) var imageData: CustomImageViewComponentData
    private(set) var newsBodyData: NewsBodyComponentData
    private(set) var isInfoViewHidden: Bool = false
    
    init(imageData: CustomImageViewComponentData,
         newsBodyData: NewsBodyComponentData,
         isInfoViewHidden: Bool = false) {
        self.imageData = imageData
        self.newsBodyData = newsBodyData
        self.isInfoViewHidden = isInfoViewHidden
    }
}
