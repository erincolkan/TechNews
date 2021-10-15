//
//  MainViewDataImplementation.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

class MainViewDataImplementation: MainViewDataFormatter {
    
    private var data: GNewsResponse!
    private var list: [Article] = [Article]()
    
    
    func getData(at index: Int) -> CardViewData? {
        guard index < list.count else {
            return nil
        }
        let data = list[index]
        return CardViewData(imageData: <#T##CustomImageViewComponentData#>, newsBodyData: <#T##NewsBodyComponentData#>)
    }
    
    func getRawData(at index: Int) -> Article {
        return list[index]
    }
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getNumbeOfItem(in section: Int) -> Int {
        let count = list.count
        return (paginationData.limit <= paginationData.resultCount) ? count + 1 : count
    }
    
    func getCount() -> Int {
        return list.count
    }
    
    func setData(with response: GNewsResponse) {
        self.data = response.data
        self.paginationData.resultCount = data.count
        self.paginationData.refreshing = false
        self.list.append(contentsOf: response.data.results)
    }
    
    func setData(with list: []) {
        self.list = list
    }
    
    func refresh() {
        
    }
     
    
}
