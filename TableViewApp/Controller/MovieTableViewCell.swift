//
//  MovieTableViewCell.swift
//  TableViewApp
//
//  Created by anna.zubakina on 28/10/2023.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var genresLabel: UILabel!
    
    func configure(with movie: Movie) {
           movieImageView.image = UIImage(named: movie.imageNames)
           movieLabel.text = movie.movieTitles
           yearLabel.text = "\(movie.releaseYears)"
           genresLabel.text = movie.movieGenres
       }
   }
