//
//  NewsBodyComponentData.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 10.10.2021.
//

import Foundation

class NewsBodyComponentData {
    private(set) var titleData: String
    private(set) var descriptionData: String
    private(set) var sourceNameData: String
    private(set) var dateData: String
    
    init(titleData: String, descriptionData: String, sourceNameData: String,
         dateData: String) {
        self.titleData = titleData
        self.descriptionData = descriptionData
        self.sourceNameData = sourceNameData
        self.dateData = dateData
    }
}
