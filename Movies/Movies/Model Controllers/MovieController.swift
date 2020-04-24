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
        guard let index = movies.firstIndex(of: movie) else { fatalError("Error updating movie")}
        self.movies[index].rating = rating
        self.movies[index].title = title
    }
    
    func updateHasBeenSeen(forMovie movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { fatalError("Error updating movie")}
        self.movies[index].hasBeenSeen = !self.movies[index].hasBeenSeen
    }
    
    func deleteMovie(_ movie: Movie) {
        guard let index = self.movies.firstIndex(of: movie) else { fatalError("Movie doesnt exist in Array 😑😔") }
        self.movies.remove(at: index)
    }
}
