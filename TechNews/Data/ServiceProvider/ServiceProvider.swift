//
//  ServiceProvider.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class ServiceProvider: ApiServiceProvider<String> {
    init(baseUrl: String) {
        super.init(method: .get, baseUrl: baseUrl)
    }
}
