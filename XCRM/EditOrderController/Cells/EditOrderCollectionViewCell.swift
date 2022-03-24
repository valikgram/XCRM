//
//  EditOrderCollectionViewCell.swift
//  XCRM
//
//  Created by Дмитрий Валькович on 23.03.22.
//

import UIKit

class EditOrderCollectionViewCell: UICollectionViewCell {

    static let identifier = "kEditOrderCollectionViewCell"
    @IBOutlet weak var editInfoTextField: UITextField!
    
    @IBOutlet weak var editInfoView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        editInfoView.layer.cornerRadius = 10
        editInfoView.layer.borderWidth = 0.3
        editInfoView.layer.borderColor = UIColor.black.cgColor
    }

}
