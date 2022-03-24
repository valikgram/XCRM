import UIKit


protocol AddInfoCollectionViewCellDelegate: AnyObject {
    func editedWith(type:NewOrderViewController.FieldsTypes, value: String)
}
final class AddInfoCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var infoTextField: UITextField!
    @IBOutlet private weak var addInfoView: UIView!
    
    static let identifier = "kAddInfoCollectionViewCell"
    private var type: NewOrderViewController.FieldsTypes?
    weak var delegate: AddInfoCollectionViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addInfoView.layer.cornerRadius = 10
        addInfoView.layer.borderWidth = 0.3
        addInfoView.layer.borderColor = UIColor.black.cgColor
        
        infoTextField.delegate = self
    }

    func setupWith(type: NewOrderViewController.FieldsTypes) {
        infoTextField.placeholder = type.rawValue
        self.type = type
    }
}

extension AddInfoCollectionViewCell: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let value = textField.text, let type = type else { return }
        delegate?.editedWith(type: type, value: value)
    }
}
