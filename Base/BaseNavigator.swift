//
//  BaseNavigator.swift
//  Test
//
//  Created by Joker on 10/10/18.
//  Copyright © 2018 Joker. All rights reserved.
//

import UIKit

// Navigate
protocol Navigate {
    associatedtype NavigateOption
    func navigate(option: NavigateOption)
}

class BaseNavigator {
    // Properties
    var navigationController: UINavigationController? {
        return scene.navigationController
    }
    
    var tabBarController: UITabBarController? {
        return scene.tabBarController ?? navigationController?.tabBarController
    }
    
    var scene: UIViewController {
        defer { _temporaryStoredScene = nil }
        return _scene
    }
    
    private unowned let _scene: UIViewController
    // to retain view controller reference upon first access
    private var _temporaryStoredScene: UIViewController?
    
    // Construction
    init(_ scene: UIViewController) {
        _scene = scene
        _temporaryStoredScene = scene
    }
}
