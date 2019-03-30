//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_moduleName___ViewController: UIViewController {
    
    // MARK: Outlets
    
    // MARK: Properties
    var presenter: ___VARIABLE_moduleName___PresenterInput!
    var configurator: ___VARIABLE_moduleName___Configurable!

    // MARK: View lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(viewController: self)
    }

}

// MARK: - ___VARIABLE_sceneName___PresenterOutput -
extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___PresenterOutput {

}
