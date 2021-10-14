//
//  BaseVisualEffectView.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 11.10.2021.
//

import Foundation
import UIKit

class BaseVisualEffectView: UIVisualEffectView {
    override init(effect: UIVisualEffect?) {
        super.init(effect: effect)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    func addMajorViewComponents() {}
    func setupViewConfigurations() {}
}
