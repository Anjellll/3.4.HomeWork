//
//  PostCell.swift
//  3.4.HomeWork
//
//  Created by anjella on 30/11/22.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var nameOfFastFood: UILabel!
    
    @IBOutlet weak var nameOfFirstFood: UILabel!
    
    @IBOutlet weak var nameOfSecondFood: UILabel!
    
    @IBOutlet weak var priceOfFood: UILabel!
    
    @IBOutlet weak var buttonTapped: UIButton!
    
    override func layoutSubviews() {
           
            iconImageView.layer.cornerRadius = 92 / 10
        buttonTapped.layer.cornerRadius = 32 / 2
//            layer.borderWidth = 0.23
    }
    
    

}
