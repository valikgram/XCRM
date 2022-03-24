import UIKit

final class OrdersViewController: UIViewController {
    
    @IBOutlet weak var ordersCollectionView: UICollectionView!
    private var ordersArray: [Order] = [Order()]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ordersCollectionView.dataSource = self
        ordersCollectionView.delegate = self
        ordersCollectionView.register(UINib(nibName: "OrdersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: OrdersCollectionViewCell.identifier)
    }
    
}


extension OrdersViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ tableView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ordersArray.count
    }
    
    func collectionView(_ tableView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ordersCell = ordersCollectionView.dequeueReusableCell(withReuseIdentifier: OrdersCollectionViewCell.identifier, for: indexPath) as? OrdersCollectionViewCell
        
        if indexPath.row == 0 {
            ordersCell?.addOrderImage.image = UIImage(named: "addOrderSvg")
        } else {
            ordersCell?.setupWith(order: ordersArray[indexPath.row])
        }

        return ordersCell ?? UICollectionViewCell()
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        return header
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let addOrderController = NewOrderViewController()
            addOrderController.delegate = self
            addOrderController.modalPresentationStyle = .fullScreen
            present(addOrderController, animated: true, completion: nil)
        }
        
        
        

    }
    
}

extension OrdersViewController: NewOrderViewControllerDelegate {
    func addOrder(_ order: Order) {
        ordersArray.append(order)
        ordersCollectionView.reloadData()
    }
    
    
}
