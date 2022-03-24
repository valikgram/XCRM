//
//  CategoryCollectionViewCell.swift
//  XCRM
//
//  Created by Дмитрий Валькович on 21.03.22.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryView: UIView!
    
    static let identifier = "kCategoryCollectionViewCell"
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryView.layer.cornerRadius = 16
        categoryView.layer.borderWidth = 0.3
        categoryView.layer.borderColor = UIColor.black.cgColor
    }
    
//    func setupWith(order: Order) {
//        var count = 0
////        let convertText = String("A\(count+=1)")
//        priceLabel.text = order.discount
//        clientNameLabel.text = order.buyer
//        itemLabel.text = order.addItem
//        orderNumberLabel?.text = String("A\(count+=1)")
////        orderNumberLabel.text = String(count)
//    }
    
    
    

}
