//
//  MovieSeatCollectionViewCell.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 1/3/22.
//

import UIKit

class MovieSeatCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewContainerMovieSeat: UIView!
    
    @IBOutlet weak var lbMovieSeatTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindData(movieSeatVO : MovieSeatVO){
        lbMovieSeatTitle.text = movieSeatVO.title
        
        if movieSeatVO.isMovieSeatText(){
            viewContainerMovieSeat.layer.cornerRadius = 0
            viewContainerMovieSeat.backgroundColor = UIColor.white
        } else if movieSeatVO.isMovieSeatTaken(){
            viewContainerMovieSeat.clipsToBounds = true
            viewContainerMovieSeat.layer.cornerRadius = 8
            viewContainerMovieSeat.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            viewContainerMovieSeat.backgroundColor = UIColor(named: "movie_seat_taken_color") ?? UIColor.gray
        } else if movieSeatVO.isMovieSeatAvailable(){
            viewContainerMovieSeat.clipsToBounds = true
            viewContainerMovieSeat.layer.cornerRadius = 8
            viewContainerMovieSeat.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            viewContainerMovieSeat.backgroundColor = UIColor(named: "movie_seat_available_color") ?? UIColor.lightGray
        }else {
            viewContainerMovieSeat.layer.cornerRadius = 0
            viewContainerMovieSeat.backgroundColor = UIColor.white
        }
    }

}
