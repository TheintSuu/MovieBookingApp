//
//  Router.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 5/3/22.
//

import Foundation



import Foundation
import UIKit

enum StoryBoardName : String{
    case Main = "Main"
    case LaunchScreen = "LaunchScreen"
}

extension UIStoryboard{
    static func mainStoryBoard()->UIStoryboard{
        UIStoryboard(name : StoryBoardName.Main.rawValue, bundle: nil)
    }
}
extension UIViewController{
    func navigateToDetailController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: MovieDetailViewController.identifier ) as? MovieDetailViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func navigateToMainController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: ViewController.identifier ) as? ViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func navigateToMovieSeatViewController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: MovieSeatViewController.identifier ) as? MovieSeatViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func navigateToMovieTimeViewController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: MovieTimeViewController.identifier ) as? MovieTimeViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func navigateToPromoViewController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier:PromoViewController.identifier ) as? PromoViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func navigateToPaymentCardViewController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: PaymentCardViewController.identifier ) as? PaymentCardViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func navigateToPaymentDetailViewController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: PaymentDetailViewController.identifier ) as? PaymentDetailViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func navigateToTicketViewController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: TicketViewController.identifier ) as? TicketViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func navigateToLoginViewController(){
        
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: LoginViewController.identifier ) as? LoginViewController else
        {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
}


