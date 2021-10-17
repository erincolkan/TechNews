//
//  MainViewDataFormatter.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

protocol MainViewDataFormatter {
    
    func getItem(from data: Article?) -> GenericDataProtocol
    
}
