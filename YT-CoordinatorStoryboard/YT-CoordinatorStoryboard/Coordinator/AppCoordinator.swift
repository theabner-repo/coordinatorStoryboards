//
//  AppCoordinator.swift
//  YT-CoordinatorStoryboard
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    var childs: [Coordinator] = []
    
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }
    
    func start() {
        let firstCoordinator = FirstCoordinator(rootViewController: rootViewController)
        firstCoordinator.start()
        childs.append(firstCoordinator)
    }
    
}
