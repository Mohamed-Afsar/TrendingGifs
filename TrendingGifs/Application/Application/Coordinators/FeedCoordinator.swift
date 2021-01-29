//
//  FeedCoordinator.swift
//  GiphySample
//
//  Created by Mohamed Afsar on 04/12/20.
//

import UIKit
import UserInterface
  
final class FeedCoordinator: Coordinator {
    
    weak var finishDelegate: CoordinatorFinishDelegate?
    
    var navigationController: UINavigationController
    
    var childCoordinators: [Coordinator] = []
    
    var type: CoordinatorType { .favourites }
    
    convenience init(navigationController: UINavigationController) {
        self.init(navigationController)
    }
    
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        navigationController.setNavigationBarHidden(false, animated: false)
        let title = "Feed"
        let viewModel = FeedViewModel(interactor: FeedViewInteractor(), title: title)
        let feedVC: FeedViewController = .gs_Instantiate()
        feedVC.viewModel = viewModel
        navigationController.pushViewController(feedVC, animated: false)
    }
}
