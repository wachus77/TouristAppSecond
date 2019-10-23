//
//  ApplicationFlowController.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 22/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

import UIKit

/// Main Flow controller of the app, has access to the main window and can change root controller
final class ApplicationFlowController {
    
    /// Dependencies of the application
    let dependencies: ApplicationDependencies
    
    private weak var window: UIWindow?
    
    /// Initializes Root Flow Controller
    ///
    /// - Parameters:
    ///   - window: Main window of the application
    ///   - dependencies: Deppendencies used in application
    init(window: UIWindow?, dependencies: ApplicationDependencies) {
        guard let window = window else {
            fatalError("Window given to the App Flow Controller was nil")
        }
        self.window = window
        self.dependencies = dependencies
    }
    
    /// Call after application was loaded, it will set proper view controller as window root
    func startApplication() {
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        displayProperFlow()
    }
    
    private func displayProperFlow() {
        let navigationController = buildWelcomeView()
        window?.rootViewController = navigationController
    }
    
}

extension ApplicationFlowController {
    private func buildWelcomeView() -> UINavigationController {
        let homeViewController = HomeViewController(view: HomeView(), viewModel: HomeViewModel())
        let navigationController = TransparentNavigationController(
            shouldHideNavigationBar: false,
            rootViewController: homeViewController
        )
        /*welcomeViewController.flowController = WelcomeFlowController(
            navigationController: navigationController,
            dependencies: dependencies
        )*/
        return navigationController
    }
}
