//
//  ItemCollectionComponentDelegate.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

protocol ItemCollectionComponentDelegate: AnyObject {
    
    func getNumberOfSection() -> Int
    func getItemCount(in section: Int) -> Int
    //func getData(at index: Int) -> GenericDataProtocol?
    func getMoreData()
    func isLoadingCell(for index: Int) -> Bool
    func selectedItem(at index: Int)
    func refreshCollectionView()
    
}

extension ItemCollectionComponentDelegate {
    
    func refreshCollectionView() { }
    
}
