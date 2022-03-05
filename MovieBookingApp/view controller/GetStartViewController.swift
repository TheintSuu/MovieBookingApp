//
//  GetStartViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 5/3/22.
//

import UIKit

class GetStartViewController: UIViewController {

    @IBOutlet weak var ivStart: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        initGestureRecognizers()

        // Do any additional setup after loading the view.
    }
    

    @objc func onTapStart(){
       navigateToLoginViewController()
    }
    
   
    
    private func initGestureRecognizers(){
        let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapStart))
        ivStart.isUserInteractionEnabled = true
        ivStart.addGestureRecognizer(tapGestureForBack)
    }

}
