//
//  PaymentViewController.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 3/3/22.
//

import UIKit

class PromoViewController: UIViewController {

    @IBOutlet weak var ivPay: UIButton!
    @IBOutlet weak var ivBack: UIImageView!
    @IBOutlet weak var tableViewPaymentType: UITableView!
    @IBOutlet weak var tableViewCombo: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableViewCombo.separatorStyle = .none
        tableViewPaymentType.separatorStyle = .none
        registerTableViewCell()
        setUpDataSource()
        initGestureRecognizers()

        // Do any additional setup after loading the view.
    }
    
    

    private func registerTableViewCell(){
        tableViewCombo.register(UINib(nibName: String(describing: ComboSetTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: ComboSetTableViewCell.self))
        tableViewPaymentType.register(UINib(nibName: String(describing: PaymentCardTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: PaymentCardTableViewCell.self))
        
    }
    
    private func setUpDataSource(){
        tableViewCombo.dataSource = self
        tableViewPaymentType.dataSource = self
    }
    
    @objc func onTapPay(){
       navigateToPaymentCardViewController()
    }
    
    @objc func onTapBack(){
        self.dismiss(animated: true, completion: nil)
    }
    
    private func initGestureRecognizers(){
        let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
        ivBack.isUserInteractionEnabled = true
        ivBack.addGestureRecognizer(tapGestureForBack)
        
        let tapGetureForPay = UITapGestureRecognizer(target: self, action:  #selector(onTapPay))
        
        ivPay.isUserInteractionEnabled = true
        ivPay.addGestureRecognizer(tapGetureForPay)
        
       
    }

}


extension PromoViewController : UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    1
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   // switch indexPath.section{
//    case ComboType.COMBO_SET_M.rawValue:
    
    if tableView == tableViewCombo {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ComboSetTableViewCell.self), for: indexPath)as? ComboSetTableViewCell else { return UITableViewCell() }
        return cell
        }else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PaymentCardTableViewCell.self), for: indexPath)as? PaymentCardTableViewCell else { return UITableViewCell() }
            return cell
        }
       
//    default:
//        return UITableViewCell()
   // }
    
}

    

    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == tableViewCombo{
            return 3
        }else {
            return 3
        }
    }
    
    
}
