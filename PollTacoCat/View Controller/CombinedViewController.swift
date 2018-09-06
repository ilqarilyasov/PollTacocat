//
//  CombinedViewController.swift
//  PollTacoCat
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "VotingSegue" {
            guard let votingVC = segue.destination as? VoteControllerProtocol else { return }
            votingVC.voteController = voteController
            
        } else if segue.identifier == "ResultsSegue" {
            guard let resultsVC = segue.destination as? VoteControllerProtocol else { return }
            resultsVC.voteController = voteController
        }
    }
}
