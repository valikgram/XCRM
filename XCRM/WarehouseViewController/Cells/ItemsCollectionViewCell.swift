//
//  ItemsCollectionViewCell.swift
//  XCRM
//
//  Created by Дмитрий Валькович on 21.03.22.
//

import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var itemsView: UIView!
    
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var vendorLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    static let identifier = "kItemsCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        itemsView.layer.cornerRadius = 16
        itemsView.layer.borderColor = UIColor.black.cgColor
        itemsView.layer.borderWidth = 0.3
    }

    func setupWith(warehouse: Warehouse) {
//        let convertText = String("A\(count+=1)")
        priceLabel.text = warehouse.price
        titleLabel.text = warehouse.title
        leftLabel.text = String("\(warehouse.left) шт.")
        vendorLabel.text = warehouse.vendorCode
        
        

    }
    
    
}
