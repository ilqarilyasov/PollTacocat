//
//  PollingTabBarViewController.swift
//  PollTacoCat
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    let voteController = VoteController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()
    }
    
    func passVoteControllerToChildViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let viewController = viewController as? VoteControllerProtocol {
                viewController.voteController = voteController
            }
        }
    }
}
