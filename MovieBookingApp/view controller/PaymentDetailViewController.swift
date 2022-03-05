//
//  PaymentDetailViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 4/3/22.
//

import UIKit

class PaymentDetailViewController: UIViewController {

    @IBOutlet weak var ivConfirm: UIButton!
    @IBOutlet weak var ivBack: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initGestureRecognizers()
        

    }
    
    
    @objc func onTapBack(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func onTapConfirm(){
        navigateToTicketViewController()
    }
    
    private func initGestureRecognizers(){
        let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
        ivBack.isUserInteractionEnabled = true
        ivBack.addGestureRecognizer(tapGestureForBack)
        
        
        let tapGestureForConfirm = UITapGestureRecognizer(target: self, action: #selector(onTapConfirm))
        ivConfirm.isUserInteractionEnabled = true
        ivConfirm.addGestureRecognizer(tapGestureForConfirm)
        
//        let tapGetureForAddCard = UITapGestureRecognizer(target: self, action:  #selector(onTapAddCard))
//        lbAddCard.isUserInteractionEnabled=true
//        ivCard.isUserInteractionEnabled = true
//        lbAddCard.addGestureRecognizer(tapGetureForAddCard)
//        ivCard.addGestureRecognizer(tapGetureForAddCard)
//
//        let tapGetureForConfirm = UITapGestureRecognizer(target: self, action:  #selector(onTapConfirm))
//
//        btnConfirm.isUserInteractionEnabled = true
//        btnConfirm.addGestureRecognizer(tapGetureForConfirm)
        
    }
        
       

}
