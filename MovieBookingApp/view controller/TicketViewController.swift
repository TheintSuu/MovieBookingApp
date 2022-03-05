//
//  TicketViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 5/3/22.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var viewContainerOverlayUpper: UIView!
  
    @IBOutlet weak var viewOverlayBarCode: UIView!
    
    @IBOutlet weak var ivClose: UIImageView!
    @IBOutlet weak var viewBarCodeLine: UIView!
    @IBOutlet weak var viewContainerOverlayLowe: UIView!
    
    @IBOutlet weak var viewDashLine: UIView!
    @IBOutlet weak var ivMovieImage: UIImageView!
    @IBOutlet weak var viewContainerOverlay: UIView!
    @IBOutlet weak var ivAwesome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initGestureRecognizers()
        setUpRoundCorner()
        setUpDashLine()

        // Do any additional setup after loading the view.
    }
    
    private func setUpDashLine(){
        viewBarCodeLine.makeDashedBorderLine()
        viewDashLine.makeDashedBorderLine()
    }
    
    


    @objc func onTapStart(){
       navigateToMainController()
    }



    private func initGestureRecognizers(){
        let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapStart))
        ivClose.isUserInteractionEnabled = true
        ivClose.addGestureRecognizer(tapGestureForBack)
    }
    
    

    private func setUpRoundCorner(){
        ivMovieImage.clipsToBounds = true
        viewContainerOverlay.clipsToBounds = true
        viewContainerOverlay.layer.cornerRadius = 20
        viewContainerOverlay.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        viewContainerOverlayLowe.clipsToBounds = true
        viewContainerOverlayLowe.layer.cornerRadius = 20
        viewContainerOverlayLowe.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        viewContainerOverlayUpper.clipsToBounds = true
        viewContainerOverlayUpper.layer.cornerRadius = 20
        viewContainerOverlayUpper.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ivMovieImage.layer.cornerRadius = 12
        ivMovieImage.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        viewOverlayBarCode.clipsToBounds = true
        viewOverlayBarCode.layer.cornerRadius = 20
        viewOverlayBarCode.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    
}
extension UIView {
    private static let lineDashPattern: [NSNumber] = [7, 7]
    private static let lineDashWidth: CGFloat = 1.0

    func makeDashedBorderLine() {
        let path = CGMutablePath()
        let shapeLayer = CAShapeLayer()
        shapeLayer.lineWidth = UIView.lineDashWidth
        shapeLayer.strokeColor = UIColor.lightGray.cgColor
        shapeLayer.lineDashPattern = UIView.lineDashPattern
        path.addLines(between: [CGPoint(x: bounds.minX, y: bounds.height/6),
                                CGPoint(x: bounds.maxX, y: bounds.height/2)])
        shapeLayer.path = path
        layer.addSublayer(shapeLayer)
    }
}
