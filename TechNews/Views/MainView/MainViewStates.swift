//
//  MainViewStates.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 15.10.2021.
//

import Foundation

typealias MainViewStateBlock = (MainViewStates) -> Void

enum MainViewStates {
    case loading
    case success
    case failure
}
