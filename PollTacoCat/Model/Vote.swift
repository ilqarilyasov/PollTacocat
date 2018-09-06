//
//  Vote.swift
//  PollTacoCat
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Vote {
    
    let name: String
    let response: String
    
    init(name: String, response: String) {
        self.name = name
        self.response = response
    }
}
