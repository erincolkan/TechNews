//
//  GenericDataProtocol.swift
//  Week_3
//
//  Created by Erinc Olkan Dokumacioglu on 2.10.2021.
//

import Foundation

protocol GenericDataProtocol {
    
}

protocol GenericRowDataProtocol: GenericDataProtocol {
    
    var itemId: Int64 { get }
    
}
