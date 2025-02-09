//
//  TabBarCoordinator.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/9/25.
//
import UIKit

final class TabBarCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var parentCoordinator: AppCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabBar = TabBarController()
        tabBar.coordinator = self
        
        let homeNavigationController = UINavigationController()
        homeNavigationController.tabBarItem = .init(
            title: "홈",
            image: UIImage(systemName: "house"),
            tag: 0
        )
        addHomeTab(navigationController: homeNavigationController)
        
        let planNavigationController = UINavigationController()
        planNavigationController.tabBarItem = .init(
            title: "훈련표",
            image: UIImage(systemName: "pencil.and.list.clipboard"),
            tag: 1)
        addPlanTab(navigationController: planNavigationController)
        
        tabBar.viewControllers = [
            homeNavigationController,
            planNavigationController
        ]
        navigationController.present(tabBar, animated: true)
    }
    
    
    private func addHomeTab(navigationController: UINavigationController) {
        let homeCoordinator = HomeCoordinator(navigationController: navigationController)
        childCoordinators.append(homeCoordinator)
        homeCoordinator.start()
    }
    private func addPlanTab(navigationController: UINavigationController) {
        let planCoordinator = PlanCoordinator(navigationController: navigationController)
        childCoordinators.append(planCoordinator)
        planCoordinator.start()
    }
//    private func addGalleryTab(navigationController: UINavigationController) {
//    }
//    private func addSettingTab(navigationController: UINavigationController) {
//    }
}
