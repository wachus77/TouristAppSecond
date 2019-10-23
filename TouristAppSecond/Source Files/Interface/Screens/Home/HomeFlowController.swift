//
//  HomeFlowController.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 23/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

final class HomeFlowController: FlowController { }

///// - SeeAlso: TermsDisplayable
//extension WelcomeFlowController: TermsDisplayable {
//    func displayTerms() {
//        let viewModel = TermsViewModel(
//            userDefaultsService: dependencies.userDefaultsService,
//            facebookService: dependencies.facebookService,
//            googleService: dependencies.googleService,
//            twitterService: dependencies.twitterService,
//            userStorage: dependencies.userStorage,
//            keychainService: dependencies.keychainService
//        )
//        let termsViewController = TermsViewController(view: TermsView(), viewModel: viewModel)
//        navigationController?.pushViewController(termsViewController, animated: true)
//        termsViewController.flowController = TermsFlowController(navigationController: navigationController, dependencies: dependencies)
//    }
//}
//
///// - SeeAlso: LoginDisplayable
//extension WelcomeFlowController: LoginDisplayable {
//    func displayLogin() {
//        let viewModel = LoginViewModel(userDefaultsService: dependencies.userDefaultsService, userStorage: dependencies.userStorage, keychainService: dependencies.keychainService, intercomService: dependencies.intercomService)
//        let loginViewController = LoginViewController(view: LoginView(), viewModel: viewModel)
//        navigationController?.pushViewController(loginViewController, animated: true)
//        loginViewController.flowController = LoginFlowController(navigationController: navigationController, dependencies: dependencies)
//    }
//}
