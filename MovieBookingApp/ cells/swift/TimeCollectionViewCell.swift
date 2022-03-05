//
//  TimeCollectionViewCell.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 25/2/22.
//

import UIKit

class TimeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewContainerTime: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContainerTime.clipsToBounds = true
        viewContainerTime.layer.cornerRadius = 4
        viewContainerTime.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
        viewContainerTime.layer.borderWidth = 1
        viewContainerTime.layer.borderColor =  UIColor(named: "movie_seat_available_color")?.cgColor ?? UIColor.gray.cgColor
        
    }

}
