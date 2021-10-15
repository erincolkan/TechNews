//
//  MainViewModel.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

class MainViewModel {
   
    
}

extension MainViewModel: ItemCollectionComponentDelegate {
    func getNumberOfSection() -> Int {
        return 0
    }
    
    func getItemCount(in section: Int) -> Int {
        return 0
    }
    
    
    func getMoreData() {
        
    }
    
    func isLoadingCell(for index: Int) -> Bool {
        return true
    }
    
    func selectedItem(at index: Int) {
        
    }
    
    
}


