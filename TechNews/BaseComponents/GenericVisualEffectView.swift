//
//  GenericVisualEffectView.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 11.10.2021.
//

import Foundation
import UIKit

class GenericVisualEffectView<T>: BaseVisualEffectView {
    private var data: T?
    
    init(effect: UIVisualEffect = UIVisualEffect(), data: T? = nil) {
        self.data = data
        super.init(effect: effect)
        loadDataView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func loadDataView() {
        
    }
    
    func setData(by value: T?) {
        self.data = value
        loadDataView()
    }
    
    func returnData() -> T? {
        return data
    }
}
