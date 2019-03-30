# MVP-Swift-Template
__MVP (Model View Presenter)__ generator which consists of:
* `View` 

```swift
final class LoginViewController: UIViewController {
    
    // MARK: Outlets
    
    // MARK: Properties
    var presenter: LoginPresenterInput!
    var configurator: LoginConfigurable!

    // MARK: View lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(viewController: self)
    }
}

// MARK: - LoginPresenterOutput -
extension LoginViewController: LoginPresenterOutput {
}
```

* `Presenter`
```swift
protocol LoginPresenterInput {
    
    var router: LoginRouter { get }
}

protocol LoginPresenterOutput: class {
}

final class LoginPresenter {
    
    //MARK: Properties
    private weak var output: LoginPresenterOutput?
    var router: LoginRouter
    
    //MARK: Construction 
    init(output: LoginPresenterOutput,
         router: LoginRouter) {
        
        self.output = output
        self.router = router
    }
}

// MARK: - LoginPresenterInput
extension LoginPresenter: LoginPresenterInput {
}
```

* `Configurator`
```swift
protocol LoginConfigurable {
    func configure(viewController: LoginViewController)
}

class LoginConfigurator: LoginConfigurable {

    //MARK: LoginConfigurable
    func configure(viewController: LoginViewController) {
    
        let router = LoginRouter()
        
        let presenter = LoginPresenter(
            output: viewController,
            router: router
        )
        
        viewController.presenter = presenter

    }
}
```

* `Router`
```swift

final class LoginRouter: BaseNavigator {
    
    // MARK: Construction
    init() {
        let scene = LoginViewController.instantiateFromStoryboard(storyboardName: 'Storyboard name')
        super.init(scene)
    
        scene.configurator = LoginConfigurator()
    }
    
}

// MARK: - Navigate -
extension LoginRouter: Navigate {
    enum NavigateOption {}
    
    func navigate(option: NavigateOption) {}
}
```

# Installation

To install MVP Swift Xcode templates, run:
```
make install
```
After that, restart your Xcode if it was already opened. You also need to add 'Base' folder to your project.

To uninstall MVP Swift Xcode templates, run:
```
make uninstall
```

# Contributing

Feedback and code contributions are very much welcome. Just make a pull request with a short description of your changes.

# Credits
Maintained and sponsored by
[Joker] (hungthai270893@gmail.com)
