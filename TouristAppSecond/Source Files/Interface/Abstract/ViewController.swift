//
//  ViewController.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 23/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

import UIKit.UIViewController

class ViewController<View: UIView, ViewModel>: UIViewController {

    /// Custom view of view controller
    let customView: View

    /// View model of view controller
    let viewModel: ViewModel

    /// Initializes view controller with given View
    ///
    /// - Parameter view: Maker for the UIView
    init(view: @escaping @autoclosure () -> View, viewModel: ViewModel) {
        self.customView = view()
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    /// - SeeAlso: NSCoding.init?(coder:)
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// - SeeAlso: UIViewController.loadView()
    override func loadView() {
        view = customView
        view.clipsToBounds = true
    }

    /// - SeeAlso: UIViewController.viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupProperties()
        setupCallbacks()
        setupBehaviour()
    }

    /// Sets up the properties of `self`. Called automatically on `viewDidLoad()`.
    func setupProperties() {
        // no-op by default
    }

    /// Sets up view in `self`. Called automatically on `viewDidLoad()`.
    func setupView() {
        // no-op by default
    }

    /// Sets up callbacks in `self`. Called automatically on `viewDidLoad()`.
    func setupCallbacks() {
        // no-op by default
    }

    /// Sets up behaviour in `self`. Called automatically on `viewDidLoad()`.
    func setupBehaviour() {
        // no-op by default
    }
}
