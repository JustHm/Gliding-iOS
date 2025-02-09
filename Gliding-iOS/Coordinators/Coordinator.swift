//
//  Coordinator.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/6/25.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
