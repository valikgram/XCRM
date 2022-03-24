import UIKit

final class WarehouseViewController: UIViewController {
    @IBOutlet weak var addItemNavigationBar: UINavigationItem!
    
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    private var itemDataSource: [Warehouse] = [Warehouse()]
    private var categoryDataSource: [Warehouse] = [Warehouse()]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemCollectionView.dataSource = self
        itemCollectionView.delegate = self
        itemCollectionView.register(UINib(nibName: "ItemsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ItemsCollectionViewCell.identifier)
        
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.delegate = self
        categoriesCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        
        
        
    }
    @IBAction func AddItemToWarehouse(_ sender: Any) {
        let addOrderController = AddItemViewController()
        addOrderController.modalPresentationStyle = .fullScreen
        present(addOrderController, animated: true, completion: nil)
    }
    
}

extension WarehouseViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == itemCollectionView {
            return itemDataSource.count
        }
        return 6
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == itemCollectionView {
            let itemCell = itemCollectionView.dequeueReusableCell(withReuseIdentifier: ItemsCollectionViewCell.identifier, for: indexPath) as? ItemsCollectionViewCell
            return itemCell ?? ItemsCollectionViewCell()
        }
        let categoryCell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell
        return categoryCell ?? CategoryCollectionViewCell()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.categoriesCollectionView{
            let categoryCellSize = CGSize(width: 90 , height: 35)
            return categoryCellSize
        }
        let itemSize = CGSize(width: 350, height: 350)
        return itemSize
    }
    
    
    
    
}

extension WarehouseViewController: AddItemViewControllerDelegate {
    func addItem(_ item: Warehouse) {
        categoryDataSource.append(item)
        itemCollectionView.reloadData()
    }
    
    
}
