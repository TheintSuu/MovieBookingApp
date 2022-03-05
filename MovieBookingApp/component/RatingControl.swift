//
//  RatingControl.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 2/3/22.
//

import UIKit
@IBDesignable
class RatingControl: UIStackView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable var starSize : CGSize =  CGSize(width: 50, height : 50){
        didSet{
            setUpButtons()
            updateButtonRating()
        }
    }
    @IBInspectable var starCount : Int = 5{
        didSet{
            setUpButtons()
            updateButtonRating()
        }
    }
   
    @IBInspectable var starRating : Int = 4 {
        didSet{
            setUpButtons()
            updateButtonRating()
        }
    }
    var ratingButton = [UIButton]()
    override init(frame : CGRect){
        super.init(frame: frame)
        setUpButtons()
        updateButtonRating()
    }

    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setUpButtons()
        updateButtonRating()
    }
   
    private func setUpButtons(){
        clearExistingButton()
        for _ in 0..<starCount {
            let button = UIButton()
            button.setImage(UIImage(named : "filledstar"), for: .selected)
            button.setImage(UIImage(named : "emptyStar"), for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
           
            addArrangedSubview(button)
            button.isUserInteractionEnabled = false
           
            ratingButton.append(button)
        }
        
    }
    
    private func updateButtonRating(){
        for (item,button) in ratingButton.enumerated(){
            button.isSelected = item < starRating
            
        }
    }
    
    private func clearExistingButton(){
        for button in ratingButton{
            removeArrangedSubview(button)
            button.removeFromSuperview()
            
        }
        ratingButton.removeAll()
    }
}

