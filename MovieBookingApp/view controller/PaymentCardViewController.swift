//
//  PaymentCardViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 4/3/22.
//

import UIKit
import UPCarouselFlowLayout

class PaymentCardViewController: UIViewController {
   
    
    @IBOutlet weak var lbAddCard: UILabel!
    @IBOutlet weak var btnConfirm: UIButton!
   
    @IBOutlet weak var ivCard: UIImageView!
    @IBOutlet weak var ivBack: UIImageView!
    @IBOutlet weak var collectionViewCards: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCells()
        
        setUpCarousel()
       
        setUpDataSourceDelegates()
        
        initGestureRecognizers()
        
        btnConfirm.clipsToBounds = true
        btnConfirm.layer.cornerRadius = 8
        btnConfirm.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
    }



    private func registerCells(){

        collectionViewCards.register(UINib(nibName: String(describing: CardCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: CardCollectionViewCell.self))
    }

   private func setUpDataSourceDelegates(){
        collectionViewCards.dataSource = self
        collectionViewCards.delegate = self
    }
    
    
    private func setUpCarousel(){
        let layout = UPCarouselFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sideItemAlpha = CGFloat(0.9)
        layout.spacingMode = .fixed(spacing: 20)
        layout.sideItemScale = CGFloat(0.75)
        layout.itemSize = CGSize(width :270, height:180)
        collectionViewCards.collectionViewLayout = layout
    }
    
    @objc func onTapConfirm(){
       navigateToTicketViewController()
    }
    
    @objc func onTapAddCard(){
       navigateToPaymentDetailViewController()
    }
    
    
    
    @objc func onTapBack(){
        self.dismiss(animated: true, completion: nil)
    }
    
    private func initGestureRecognizers(){
        let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
        ivBack.isUserInteractionEnabled = true
        ivBack.addGestureRecognizer(tapGestureForBack)
        
        let tapGetureForAddCard = UITapGestureRecognizer(target: self, action:  #selector(onTapAddCard))
        lbAddCard.isUserInteractionEnabled=true
        ivCard.isUserInteractionEnabled = true
        lbAddCard.addGestureRecognizer(tapGetureForAddCard)
        ivCard.addGestureRecognizer(tapGetureForAddCard)
        
        let tapGetureForConfirm = UITapGestureRecognizer(target: self, action:  #selector(onTapConfirm))
        
        btnConfirm.isUserInteractionEnabled = true
        btnConfirm.addGestureRecognizer(tapGetureForConfirm)
        
       
    }

}

extension PaymentCardViewController :   UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        

      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CardCollectionViewCell.self), for: indexPath)as? CardCollectionViewCell else {
                    return UICollectionViewCell()
        }
        return cell
            
    }


func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    return CGSize(width: 270, height: 180)

    }

}

