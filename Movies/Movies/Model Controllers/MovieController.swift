//
//  MovieController.swift
//  Movies
//
//  Created by brian vilchez on 4/24/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import Foundation

class MovieController {
    
    //MARK: - properties
    private(set) var movies = [Movie]()
    
    
    //MARK: - C.R.U.D methods
    func createMovie(withTitle title: String, rating: String) {
        let movie = Movie(title: title, rating: rating)
        self.movies.append(movie)
    }
    
    func updateMovie(_ movie: Movie, withTitle title: String, rating: String) {
        
    }
    
    func deleteMovie(_ movie: Movie) {
        
    }
}
