//
//  Movie.swift
//  Movies
//
//  Created by brian vilchez on 4/24/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    var title: String
    var rating: String
    var hasBeenSeen: Bool
    
    init(title: String,rating: String, hasBeenSeen: Bool = false) {
        self.title = title
        self.rating = rating
        self.hasBeenSeen = hasBeenSeen
    }
}
