import UIKit

final class EditOrderController: UIViewController {

    @IBOutlet weak var editCollectionView: UICollectionView!
    
    private var editArray: [String] = ["Покупатель", "Добавить товар", "Способ", "Доставка", "Скидка", "Менеджер", "Склад", "Срок выполнения"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        editCollectionView.dataSource = self
        editCollectionView.delegate = self
        editCollectionView.register(UINib(nibName: "EditOrderCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: EditOrderCollectionViewCell.identifier)
        
        
        
        
    }

}


extension EditOrderController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return editArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = editCollectionView.dequeueReusableCell(withReuseIdentifier: EditOrderCollectionViewCell.identifier, for: indexPath) as? EditOrderCollectionViewCell
        if indexPath.row == 0 {
            cell?.editInfoTextField?.attributedPlaceholder = NSAttributedString(string: "Покупатель")
        }
        if indexPath.row == 1 {
            cell?.editInfoTextField?.attributedPlaceholder = NSAttributedString(string: "Добавить товар")
        }
        if indexPath.row == 2 {
            cell?.editInfoTextField?.attributedPlaceholder = NSAttributedString(string: "Способ")
        }
        if indexPath.row == 3 {
            cell?.editInfoTextField?.attributedPlaceholder = NSAttributedString(string: "Доставка")
        }
        if indexPath.row == 4 {
            cell?.editInfoTextField?.attributedPlaceholder = NSAttributedString(string: "Скидка")
        }
        if indexPath.row == 5 {
            cell?.editInfoTextField?.attributedPlaceholder = NSAttributedString(string: "Менеджер")
        }
        if indexPath.row == 6 {
            cell?.editInfoTextField?.attributedPlaceholder = NSAttributedString(string: "Склад")
        }
        if indexPath.row == 7 {
            cell?.editInfoTextField?.attributedPlaceholder = NSAttributedString(string: "Срок выполнения")
        }
        
        
        return cell ?? EditOrderCollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {  //функция размера ячейки
                let screenWidth = UIScreen.main.bounds.size.width
                let offset = 20
                let cellWidth = (Int(screenWidth) - offset * 2)
                let size2 = CGSize(width: cellWidth , height: 49)
                return size2
            
}
}
