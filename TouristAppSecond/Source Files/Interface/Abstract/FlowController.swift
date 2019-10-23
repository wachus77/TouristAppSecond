//
//  FlowController.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 23/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

import UIKit.UINavigationController

class FlowController: NavigationFlowController {

    /// - SeeAlso: NavigationFlowController.navigationController
    weak var navigationController: UINavigationController?

    /// Shared dependencies used extensively in the application
    let dependencies: ApplicationDependencies

    /// Initializes flow controller with given navigation controller
    ///
    /// - Parameter navigationController: Navigation controller of the flow controller
    init(navigationController: UINavigationController?, dependencies: ApplicationDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
}
