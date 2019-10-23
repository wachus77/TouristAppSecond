//
//  ViewSetupable.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 23/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

/// Interface for setting up the view
protocol ViewSetupable {

    /// Add subviews to the view when called
    func setupViewHierarchy()

    /// Add constraints to the view when called
    func setupConstraints()

    /// Setup required properties when called
    func setupProperties()
}

extension ViewSetupable {

    // Empty default implementation - not every class need this method
    func setupProperties() { }

    /// Calls all other setup methods in proper order
    func setupView() {
        setupViewHierarchy()
        setupConstraints()
        setupProperties()
    }
}

