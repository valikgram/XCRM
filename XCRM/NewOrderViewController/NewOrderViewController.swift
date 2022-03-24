import UIKit

protocol NewOrderViewControllerDelegate: AnyObject {
    func addOrder(_ order: Order)
}

final class NewOrderViewController: UIViewController {
    
    @IBOutlet weak var infoAddCollectionView: UICollectionView!
    
    static let identifier = "kNewOrderViewController"
    
    private var infoArray: [FieldsTypes] = FieldsTypes.allCases
    
    private var order = Order()
    
    weak var delegate: NewOrderViewControllerDelegate?
    
     enum FieldsTypes: String, CaseIterable {
        case buyer = "Покупатель"
        case addItem = "Добавить товар"
        case method = "Способ"
        case delivery = "Доставка"
        case sale = "Скидка"
        case manager = "Менеджер"
        case warehouse = "Склад"
        case estimate = "Срок выполнения"
    }
    
//    static var order: [Order] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoAddCollectionView.dataSource = self
        infoAddCollectionView.delegate = self
        infoAddCollectionView.register(UINib(nibName: "AddInfoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: AddInfoCollectionViewCell.identifier)
        
    }



    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func createOrderButton(_ sender: Any) {
        delegate?.addOrder(order)
        dismiss(animated: true, completion: nil)
    }
    
}

extension NewOrderViewController: UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return infoArray.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = infoAddCollectionView.dequeueReusableCell(withReuseIdentifier: AddInfoCollectionViewCell.identifier, for: indexPath) as? AddInfoCollectionViewCell
        cell?.setupWith(type: infoArray[indexPath.row])
        cell?.delegate = self
        return cell ?? AddInfoCollectionViewCell()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {  //функция размера ячейки
                let screenWidth = UIScreen.main.bounds.size.width
                let offset = 20
                let cellWidth = (Int(screenWidth) - offset * 2)
                let size2 = CGSize(width: cellWidth , height: 49)
                return size2
            
}
    
    
}

extension NewOrderViewController: AddInfoCollectionViewCellDelegate {
    func editedWith(type: FieldsTypes, value: String) {
     
        switch type {
        case .buyer:
            order.buyer = value
        case .addItem:
            order.addItem = value
        case .method:
            order.method = value
        case .delivery:
            order.delivery = value
        case .sale:
            order.discount = value
        case .manager:
            order.manager = value
        case .warehouse:
            order.warehouse = value
        case .estimate:
            order.estimate = value
        }
    }
}
