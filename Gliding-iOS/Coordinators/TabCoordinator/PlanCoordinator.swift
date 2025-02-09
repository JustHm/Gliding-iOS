//
//  PlanCoordinator.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/9/25.
//

import UIKit

final class PlanCoordinator: Coordinator {
    var childCoordinators: [any Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let viewModel = PlanViewModel()
        let vc = PlanViewController(viewModel: viewModel)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
