//
//  ApplicationDependencies.swift
//  TouristAppSecond
//
//  Created by TIWASZEK on 22/10/2019.
//  Copyright © 2019 TIWASZEK. All rights reserved.
//

/// Shared dependencies used extensively in the application
final class ApplicationDependencies {

    private init() {}

    ///Shared instance of dependencies
    fileprivate static let shared = ApplicationDependencies()

//    /// Firebase service instance
//    let firebaseService: RunnableService = FirebaseService()
//
//    /// Twitter service
//    let twitterService = TwitterService()
//
//    /// Facebook service
//    let facebookService = FacebookService()
//
//    /// Google service
//    let googleService = GoogleService()
//
//    /// Container of the database
//    let databaseContainer = DatabaseContainer()
//
//    /// Service with user database
//    let userStorage: UserStorage = UserContainer()
//
//    /// Service with user defaults
//    let userDefaultsService = UserDefaultsService.shared
//
//    /// Service with Keychain
//    let keychainService = KeychainService.shared
//
//    /// Service that handles push notifications
//    lazy var pushNotificationService = PushNotificationService(dependencies: self)
//
//    /// Service that handles user's current location.
//    lazy var trackingLocationService = TrackingLocationService(userDefaultsService: userDefaultsService)
//
//    /// Performs logout cleanup of the needed denepdencies.
//    func performLogoutCleanup() {
//        keychainService.eraseDataForLogOutAction()
//        userDefaultsService.eraseDataForLogOutAction()
//        facebookService.logOut()
//        googleService.logOut()
//        let realm = try! Realm()
//        realm.safelyWrite {
//            realm.deleteAll()
//        }
//    }
}

/// Instance is only visible for AppDelegate. Inject it through dependency injection for every other place.
//extension AppDelegate {
//    var applicationDependenciesSingleton: ApplicationDependencies {
//        return ApplicationDependencies.shared
//    }
//}

extension SceneDelegate {
    var applicationDependenciesSingleton: ApplicationDependencies {
        return ApplicationDependencies.shared
    }
}

