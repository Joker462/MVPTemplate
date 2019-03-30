//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_moduleName___PresenterInput {
    
    var router: ___VARIABLE_moduleName___Router { get }
}

protocol ___VARIABLE_moduleName___PresenterOutput: class {
}

final class ___VARIABLE_moduleName___Presenter {
    
    // MARK: Properties
    private weak var output: ___VARIABLE_moduleName___PresenterOutput?
    var router: ___VARIABLE_moduleName___Router
    
    // MARK: Construction
    init(output: ___VARIABLE_moduleName___PresenterOutput,
         router: ___VARIABLE_moduleName___Router) {
        
        self.output = output
        self.router = router
    }
    
}

// MARK: - ___VARIABLE_sceneName___PresenterInput -
extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterInput {
}

