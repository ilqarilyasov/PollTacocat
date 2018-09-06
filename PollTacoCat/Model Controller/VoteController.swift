//
//  VoteController.swift
//  PollTacoCat
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class VoteController {
    
    private(set) var votes: [Vote] = []
    
    func createVote(name: String, response: String) {
        let newVote = Vote(name: name, response: response)
        votes.append(newVote)
    }
}
