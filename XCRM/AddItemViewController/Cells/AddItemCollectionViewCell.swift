import UIKit


protocol AddItemCollectionViewCellDelegate: AnyObject {
    func editedWith(type:AddItemViewController.AddItemFieldsTypes, value: String)
}
final class AddItemCollectionViewCell: UICollectionViewCell {
    private var type: AddItemViewController.AddItemFieldsTypes?
    weak var delegate: AddItemCollectionViewCellDelegate?
    
    static let identifier = "kAddItemCollectionViewCell"
    @IBOutlet weak var addItemUiView: UIView!
    @IBOutlet weak var addItemTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addItemUiView.layer.cornerRadius = 10
        addItemUiView.layer.borderWidth = 0.3
        addItemUiView.layer.borderColor = UIColor.black.cgColor
        addItemTextField.delegate = self
    }
    
    func setupWithh(type: AddItemViewController.AddItemFieldsTypes) {
        addItemTextField.placeholder = type.rawValue
        self.type = type
    }
    
}
extension AddItemCollectionViewCell: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let value = textField.text, let type = type else { return }
        delegate?.editedWith(type: type, value: value)
    }
}
