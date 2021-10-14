//
//  ColorHelper.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 11.10.2021.
//

import UIKit

enum ColorHelper: GenericValueProtocol {
    typealias Value = UIColor
    
    var value: UIColor {
        switch self {
        case .backgroundColor:
            return HexColorUtil.hexStringToUIColor(hex: "#efefef")
        case .accentColor:
            return HexColorUtil.hexStringToUIColor(hex: "#b000f0")
        }
    }
    
    case backgroundColor
    case accentColor
}
