//
//  MyTableViewCellData.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 11.10.2021.
//

import Foundation

class MyTableViewCellData: GenericDataProtocol {
    private(set) var imageData: CustomImageViewComponentData
    private(set) var newsData: NewsBodyComponentData
    
    init(imageData: CustomImageViewComponentData,
         newsData: NewsBodyComponentData) {
        self.imageData = imageData
        self.newsData = newsData
    }
}
