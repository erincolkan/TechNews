//
//  EndpointManagers.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

//I know that this is not the best implementation, please don't judge me.
enum RequestUrls: GenericValueProtocol {
    typealias Value = String
    
    var value: String {
        switch self {
            case .apple:
                return "https://gnews.io/api/v4/search?q=Apple&lang=en&token=65b4e518bb6666eedbb3a3b9384534df"
            case .tech:
                return "https://gnews.io/api/v4/search?q=Consumer%20Electronics&lang=en&token=65b4e518bb6666eedbb3a3b9384534df"
            }
    }
    
    case apple
    case tech
}
