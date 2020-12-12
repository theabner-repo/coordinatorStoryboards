//
//  FirstCoordinator.swift
//  YT-CoordinatorStoryboard
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import Foundation
import UIKit

class FirstCoordinator: Coordinator, Storyboarded {
    
    var rootViewController: UINavigationController
    var childs: [Coordinator] = []
    
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }
    
    func start() {
        let viewController = instantiateViewController(withIdentifier: .viewController)
        rootViewController.pushViewController(viewController, animated: false)
    }
    
}
