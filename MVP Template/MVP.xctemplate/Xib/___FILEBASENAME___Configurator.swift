//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_moduleName___Configurable {
    func configure(viewController: ___VARIABLE_moduleName___ViewController)
}

final class ___VARIABLE_moduleName___Configurator: ___VARIABLE_moduleName___Configurable {

    //MARK: ___VARIABLE_moduleName___Configurable
    func configure(viewController: ___VARIABLE_moduleName___ViewController) {
    
        let router = ___VARIABLE_moduleName___Router()
        
        let presenter = ___VARIABLE_moduleName___Presenter(
            output: viewController,
            router: router
        )
        
        viewController.presenter = presenter

    }
}
