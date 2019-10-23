//
//  TransparentNavigationController.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 23/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

import UIKit

/// Navigation Controller with transparent navigation bar
final class TransparentNavigationController: UINavigationController {

    /// Initializes transparent navigation controller
    ///
    /// - Parameters:
    ///   - shouldHideNavigationBar: Flag that indicates if nabigation controller should hide its navigation bar
    ///   - rootViewController: Root controller of navigation controller
    init(shouldHideNavigationBar: Bool, rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        guard shouldHideNavigationBar else { return }
        setNavigationBarHidden(shouldHideNavigationBar, animated: false)
    }

    /// - SeeAlso: NSCoding.init?(coder:)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// - SeeAlso: UINavigationController.init(nibName: bundle:)
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    /// - SeeAlso: UINavigationController.viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupNavigationBar()
    }

    /// Sets navigation bar parameters
    private func setupNavigationBar() {
        navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        navigationBar.tintColor = .blue
    }
}

/// - SeeAlso: UINavigationControllerDelegate
extension TransparentNavigationController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        let untitledBackButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        viewController.navigationItem.backBarButtonItem = untitledBackButton
    }
}
