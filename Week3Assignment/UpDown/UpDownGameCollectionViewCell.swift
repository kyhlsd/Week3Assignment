//
//  UpDownGameCollectionViewCell.swift
//  Week3Assignment
//
//  Created by 김영훈 on 7/17/25.
//

import UIKit

class UpDownGameCollectionViewCell: UICollectionViewCell, Identifying {

    @IBOutlet var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        numberLabel.clipsToBounds = true
    }
    
    override func draw(_ rect: CGRect) {
        numberLabel.layer.cornerRadius = numberLabel.frame.height / 2
    }
    
    func configure(_ number: Int, isSelected: Bool) {
        numberLabel.text = "\(number)"
        
        if isSelected {
            numberLabel.backgroundColor = .black
            numberLabel.textColor = .white
        } else {
            numberLabel.backgroundColor = .white
            numberLabel.textColor = .black
        }
    }
}
