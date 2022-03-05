//
//  ViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 25/2/22.
//

import UIKit



class ViewController: UIViewController ,  MovieItemDelegate{
    func onTapMovie() {
       navigateToDetailController()
    }
    
    
    
   
    @IBOutlet weak var collectionViewMovieComingSoon: UICollectionView!
    
    @IBOutlet weak var collectionViewMovieNowShowing: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        setUpDataSourceDelegates()
        
        
    }
        
        private func registerCells(){

          collectionViewMovieComingSoon.register(UINib(nibName: String(describing: MovieCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: MovieCollectionViewCell.self))
            
            collectionViewMovieNowShowing.register(UINib(nibName: String(describing: MovieCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: MovieCollectionViewCell.self))
        

        }

       private func setUpDataSourceDelegates(){
           collectionViewMovieNowShowing.dataSource = self
           collectionViewMovieNowShowing.delegate = self
           
           collectionViewMovieComingSoon.delegate = self
           collectionViewMovieComingSoon.dataSource = self
        }

    }

extension ViewController :   UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{


        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 10
        }



        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

          
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MovieCollectionViewCell.self), for: indexPath)as? MovieCollectionViewCell else {
                        return UICollectionViewCell()
            }
            
    
            return cell
                

            }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: 255)

        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.onTapMovie()
    }
    
    

}

