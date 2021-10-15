//
//  ItemCollectionViewData.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

class ItemCollectionViewData {
    
    private(set) var isRefreshingSupported: Bool = false
    
    init(isRefreshingSupported: Bool = false) {
        self.isRefreshingSupported = isRefreshingSupported
    }
    
}
