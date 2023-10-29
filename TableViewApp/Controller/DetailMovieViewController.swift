//
//  DetailMovieViewController.swift
//  TableViewApp
//
//  Created by anna.zubakina on 29/10/2023.
//

import UIKit

class DetailMovieViewController: UIViewController {
    
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var infoMovie: UILabel!
    @IBOutlet weak var viewTrailer: UIButton!
    @IBOutlet weak var moreInfo: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let mainMovie  = movie {
            imageMovie.image = UIImage(named: mainMovie.imageNames)
            infoMovie.text = mainMovie.movieTitles + "\n\(mainMovie.releaseYears)" + "\n\(mainMovie.movieGenres)"
            moreInfo.text = mainMovie.descriptions
        }
    }
    
  
    
    @IBAction func goYoutube(_ sender: UIButton) {
        guard let trailerUrl = movie?.movieTrailerUrls
        else {
            return
        }
        
        UIApplication.shared.open(trailerUrl, options: [:], completionHandler: nil)
    }
}
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


