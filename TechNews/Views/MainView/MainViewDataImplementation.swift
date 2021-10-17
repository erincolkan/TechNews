//
//  MainViewDataImplementation.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

class MainViewDataImplementation: MainViewDataFormatter {
    func getItem(from data: Article?) -> GenericDataProtocol {
        
        guard let data = data else { fatalError("ben öldüm") }
        return CardViewData(
            imageData: CustomImageViewComponentData(imageUrl: data.image),
            newsBodyData: NewsBodyComponentData(
                titleData: data.title,
                descriptionData: data.articleDescription,
                sourceNameData: data.source.name,
                dateData: data.publishedAt)
        )
    }
}
