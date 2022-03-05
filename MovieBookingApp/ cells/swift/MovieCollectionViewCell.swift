//
//  MovieCollectionViewCell.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 2/3/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell{

    @IBOutlet weak var lbMovieImage: UIImageView!
    
    var delegate : MovieItemDelegate? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        lbMovieImage.clipsToBounds = true
        lbMovieImage.layer.cornerRadius = 10
        lbMovieImage.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    

}
