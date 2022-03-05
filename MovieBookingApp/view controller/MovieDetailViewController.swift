//
//  MovieDetailViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 2/3/22.
//

import UIKit

class MovieDetailViewController: UIViewController {

   
    @IBOutlet weak var IvMovieImage: UIImageView!
    
    @IBOutlet weak var btnTicket: UIButton!
    @IBOutlet weak var ivBack: UIImageView!
    @IBOutlet weak var viewOverlay: UIView!
    @IBOutlet weak var collectionViewCast: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initGestureRecognizers()
        IvMovieImage.clipsToBounds = true
        IvMovieImage.layer.cornerRadius = 18
        IvMovieImage.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        viewOverlay.clipsToBounds = true
        viewOverlay.layer.cornerRadius = 18
        viewOverlay.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        registerCells()
        setUpDataSourceDelegates()
    }
    


        private func registerCells(){

            collectionViewCast.register(UINib(nibName: String(describing: CastCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: CastCollectionViewCell.self))
        

        }

       private func setUpDataSourceDelegates(){
            collectionViewCast.dataSource = self
            collectionViewCast.delegate = self
        }
    
        @objc func onTapTicket(){
           navigateToMovieTimeViewController()
        }
        
        @objc func onTapBack(){
            self.dismiss(animated: true, completion: nil)
        }
        
        private func initGestureRecognizers(){
            let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
            ivBack.isUserInteractionEnabled = true
            ivBack.addGestureRecognizer(tapGestureForBack)
            
            let tapGetureForTicket = UITapGestureRecognizer(target: self, action:  #selector(onTapTicket))
            
            btnTicket.isUserInteractionEnabled = true
            btnTicket.addGestureRecognizer(tapGetureForTicket)
            
           
        }

}

extension MovieDetailViewController :   UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{


        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 10
        }



        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

          
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CastCollectionViewCell.self), for: indexPath)as? CastCollectionViewCell else {
                        return UICollectionViewCell()
            }
            
            return cell
                

            }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 50, height: 50)

        }

}
