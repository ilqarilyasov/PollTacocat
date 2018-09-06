//
//  VotingViewController.swift
//  PollTacoCat
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
              let response = responseTextField.text else { return }
        
        voteController?.createVote(name: name, response: response)
    }
}
