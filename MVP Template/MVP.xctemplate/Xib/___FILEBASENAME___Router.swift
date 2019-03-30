//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_moduleName___Router: BaseNavigator {
    
    // MARK: Construction
    init() {
        let scene = ___VARIABLE_moduleName___ViewController.instantiateFromNib(bundle: nil)
        super.init(scene)
        
        scene.configurator = ___VARIABLE_moduleName___Configurator()
    }
}

// MARK: - Navigate -
extension ___VARIABLE_moduleName___Router: Navigate {
    enum NavigateOption {}
    
    func navigate(option: NavigateOption) {}
}
