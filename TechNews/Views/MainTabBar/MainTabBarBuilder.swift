//
//  MainTabBarBuilder.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 10.10.2021.
//

import UIKit

class MainTabBarBuilder {
    class func build() -> UIViewController {
        let tabViewController = MainTabBarController()
        tabViewController.tabBar.backgroundColor = .systemBackground
        return tabViewController
    }
}
