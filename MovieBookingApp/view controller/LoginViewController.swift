//
//  LoginViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 5/3/22.
//

import UIKit

class LoginViewController: UIViewController {

   
    @IBOutlet weak var lbLogin: UILabel!
    @IBOutlet weak var viewLogin: UIView!
    
    @IBOutlet weak var viewScrollLogin: UIView!
    @IBOutlet weak var viewContainerSingup: UIView!
    @IBOutlet weak var viewName: UIStackView!
    @IBOutlet weak var viewContainerPhone: UIStackView!
    
    @IBOutlet weak var lbSingUp: UILabel!
    @IBOutlet weak var lbBtnConfirm: UIButton!
    @IBOutlet weak var lbButtonFacebook: UIView!
    
    @IBOutlet weak var viewScrollSingUp: UIView!
    @IBOutlet weak var lbGoogle: UIView!
    
    var color_primary = #colorLiteral(red: 0.368627451, green: 0.2509803922, blue: 0.6862745098, alpha: 1)
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        initGestureRecognizers()
        
        viewName.isHidden = true
        viewContainerPhone.isHidden = true
        
        lbButtonFacebook.layer.borderWidth = 1
        
        lbButtonFacebook.layer.borderColor = UIColor.gray.cgColor
        
        lbGoogle.layer.borderColor = UIColor.gray.cgColor
        
        lbGoogle.layer.borderWidth = 1

        // Do any additional setup after loading the view.
    }
    
    @objc func onTapBack(){
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @objc func navigateToHomeScreen(){
       navigateToMainController()
        
    }
   
     @objc func onTapSingUp(){
        viewName.isHidden = false
        
        viewContainerPhone.isHidden = false
         lbLogin.textColor = UIColor.black
         viewScrollLogin.backgroundColor = UIColor.white
         lbSingUp.textColor = color_primary
         viewScrollSingUp.backgroundColor = color_primary
        
    }
    
    @objc func onTapLogin(){
        viewName.isHidden = true
        viewContainerPhone.isHidden = true
        lbSingUp.textColor = UIColor.black
        viewScrollSingUp.backgroundColor = UIColor.white
        lbLogin.textColor = color_primary
        viewScrollLogin.backgroundColor = color_primary
    }
    
    private func initGestureRecognizers(){
        let tapGestureForConfirm = UITapGestureRecognizer(target: self, action: #selector(navigateToHomeScreen))
        lbBtnConfirm.isUserInteractionEnabled = true
        lbBtnConfirm.addGestureRecognizer(tapGestureForConfirm)
        
        let tapGetureForLogin = UITapGestureRecognizer(target: self, action:  #selector(onTapLogin))
        
        viewLogin.isUserInteractionEnabled = true
        viewLogin.addGestureRecognizer(tapGetureForLogin)
        
        let tapGetureForSingUp = UITapGestureRecognizer(target: self, action:  #selector(onTapSingUp))
        
        viewContainerSingup.isUserInteractionEnabled = true
        viewContainerSingup.addGestureRecognizer(tapGetureForSingUp)
    }
    

    

}
