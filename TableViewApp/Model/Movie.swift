//
//  Movie.swift
//  TableViewApp
//
//  Created by anna.zubakina on 28/10/2023.
//

import Foundation

struct Movie {
    
    let movieTitles: String
    let imageNames: String
    let movieGenres: String
    let releaseYears: Int
    let descriptions: String
    let movieTrailerUrls: URL?
  
    
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let titles = DataManager.shared.movieTitles
        let images = DataManager.shared.imageNames
        let genres = DataManager.shared.movieGenres
        let years = DataManager.shared.releaseYears
        let descs = DataManager.shared.descriptions
        let filmurls = DataManager.shared.movieTrailerUrls
        
        
        for i in 0..<titles.count {
            
            let movie = Movie(movieTitles: titles[i], imageNames: images[i], movieGenres: genres[i], releaseYears: years[i], descriptions: descs[i], movieTrailerUrls: URL(string: filmurls[i]))
            movies.append(movie)
        }
        
        return movies
    }
}
            
     
