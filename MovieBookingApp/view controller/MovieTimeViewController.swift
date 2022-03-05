//
//  MovieTimeViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 25/2/22.
//
import Foundation
import UIKit

class MovieTimeViewController: UIViewController {

   //collectionview
    @IBOutlet weak var collectionViewDays: UICollectionView!
    
    @IBOutlet weak var ivBack: UIImageView!
    @IBOutlet weak var ivNext: UIButton!
    @IBOutlet weak var viewContainerTimes: UIView!
    //Layout
    @IBOutlet weak var collectionViewAvailableIn: UICollectionView!
    
    
    @IBOutlet weak var collectionViewGCGoldenCity: UICollectionView!
    
    
    
    @IBOutlet weak var collectionViewGCWestPoint: UICollectionView!
    
    
   
    @IBOutlet weak var collectionViewHeightGCWestPoint: NSLayoutConstraint!
    
    @IBOutlet weak var collectionViewHieghtAvailableIn: NSLayoutConstraint!
    
    @IBOutlet weak var collectionViewHeightGCGoldenCity: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewContainerTimes.clipsToBounds = true
        viewContainerTimes.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        viewContainerTimes.layer.cornerRadius = 16
       
        
        initGestureRecognizers()
        registerCells()
        setUpDataSourceDelegates()
        setUpHeightsForCollectionView()


        }
    
        
        


        private func registerCells(){

    
        collectionViewDays.register(UINib(nibName: String(describing: DaysCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: DaysCollectionViewCell.self))

            collectionViewAvailableIn.register(UINib(nibName: String(describing: TimeCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: TimeCollectionViewCell.self))

        collectionViewGCGoldenCity.register(UINib(nibName: String(describing: TimeCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: TimeCollectionViewCell.self))

        collectionViewGCWestPoint.register(UINib(nibName: String(describing: TimeCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: TimeCollectionViewCell.self))

        }

        private func setUpDataSourceDelegates(){
            collectionViewDays.dataSource = self
            collectionViewDays.delegate = self

            collectionViewAvailableIn.dataSource = self
            collectionViewAvailableIn.delegate = self

            collectionViewGCGoldenCity.dataSource = self
            collectionViewGCGoldenCity.delegate = self

            collectionViewGCWestPoint.dataSource = self
            collectionViewGCWestPoint.delegate = self
        }

        private func setUpHeightsForCollectionView(){
        
        collectionViewHieghtAvailableIn.constant = 60

        collectionViewHeightGCGoldenCity.constant = 60 * 2

        collectionViewHeightGCWestPoint.constant = 60 * 2
        self.view.layoutIfNeeded()
            
        }
    
        @objc func onTapTicket(){
           navigateToMovieSeatViewController()
        }
        
        @objc func onTapBack(){
            self.dismiss(animated: true, completion: nil)
        }
        
        private func initGestureRecognizers(){
            let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
            ivBack.isUserInteractionEnabled = true
            ivBack.addGestureRecognizer(tapGestureForBack)
            
            let tapGetureForTicket = UITapGestureRecognizer(target: self, action:  #selector(onTapTicket))
            
            ivNext.isUserInteractionEnabled = true
            ivNext.addGestureRecognizer(tapGetureForTicket)
            
           
        }
    
    
    }

extension MovieTimeViewController :   UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{


        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                if collectionView == collectionViewDays {
                    return 7
                }
                else if collectionView == collectionViewAvailableIn{
                return 3
                }else {
                    return 6
                }
        }



        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

           if collectionView == collectionViewDays {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DaysCollectionViewCell.self), for: indexPath)as? DaysCollectionViewCell else {
                    return UICollectionViewCell()
                }
                return cell
            }
    
            else  {
                    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: TimeCollectionViewCell.self), for: indexPath)as? TimeCollectionViewCell else {
                        return UICollectionViewCell()
                    }
                    return cell
                }

            }




    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if collectionView == collectionViewDays {
                    return CGSize(width: 50,  height: 80)
            }
                else  {
                    return CGSize(width: collectionView.frame.width/3, height: 48)
                }

        }



}
