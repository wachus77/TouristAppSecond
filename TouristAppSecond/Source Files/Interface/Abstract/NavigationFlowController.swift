//
//  NavigationFlowController.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 23/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

import UIKit.UINavigationController

/// Interface for flow controllers
protocol NavigationFlowController {

    /// Navigation controller in flow controller
    var navigationController: UINavigationController? { get }
}
