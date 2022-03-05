//
//  MovieSeatViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 1/3/22.
//

import UIKit

class MovieSeatViewController: UIViewController {

  
    @IBOutlet weak var ivBuyTicket: UIButton!
    @IBOutlet weak var ivBack: UIImageView!
    @IBOutlet weak var collectionViewMovieSeats: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        setUpDataSourceDelegates()
        initGestureRecognizers()
        }


        private func registerCells(){
            collectionViewMovieSeats.register(UINib(nibName: String(describing: MovieSeatCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: MovieSeatCollectionViewCell.self))
    
        }

       private func setUpDataSourceDelegates(){
            collectionViewMovieSeats.dataSource = self
            collectionViewMovieSeats.delegate = self
        }
        
        @objc func onTapTicket(){
           navigateToPromoViewController()
        }
        
        @objc func onTapBack(){
            self.dismiss(animated: true, completion: nil)
        }
    
        private func initGestureRecognizers(){
            let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
            ivBack.isUserInteractionEnabled = true
            ivBack.addGestureRecognizer(tapGestureForBack)
            
            let tapGetureForTicket = UITapGestureRecognizer(target: self, action:  #selector(onTapTicket))
            
            ivBuyTicket.isUserInteractionEnabled = true
            ivBuyTicket.addGestureRecognizer(tapGetureForTicket)
            
           
        }

    }

extension MovieSeatViewController :   UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{


        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return dummyMovieSeats.count
        }



        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

          
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MovieSeatCollectionViewCell.self), for: indexPath)as? MovieSeatCollectionViewCell else {
                        return UICollectionViewCell()
            }
            
            cell.bindData(movieSeatVO : dummyMovieSeats[indexPath.row])
                    
            return cell
                

            }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width/10, height: 40)

        }

}
