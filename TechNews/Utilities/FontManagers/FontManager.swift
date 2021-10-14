//
//  FontManager.swift
//  PermissionProject
//
//  Created by Erkut Bas on 25.09.2021.
//

import UIKit

enum FontManager: GenericValueProtocol {
    
    typealias Value = UIFont
    
    var value: UIFont {
        switch self {
        case .title:
            return UIFont.systemFont(ofSize: 15, weight: .bold)
            
        case .description:
            return UIFont.systemFont(ofSize: 13, weight: .regular)
        
        case .source:
            return UIFont.systemFont(ofSize: 12, weight: .regular)
        }
    }
    
    case title
    case description
    case source
}
