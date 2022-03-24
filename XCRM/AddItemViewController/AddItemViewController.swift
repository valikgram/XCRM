//
//  AddItemViewController.swift
//  XCRM
//
//  Created by Дмитрий Валькович on 24.03.22.
//

import UIKit

protocol AddItemViewControllerDelegate: AnyObject {
    func addItem(_ item: Warehouse)
}

class AddItemViewController: UIViewController {
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var addImageOutlet: UIImageView!
    @IBOutlet weak var addItemToCollection: UICollectionView!
    
    private var addItemArray: [AddItemFieldsTypes] = AddItemFieldsTypes.allCases
    private var warehouse = Warehouse()
    
    weak var delegate: AddItemViewControllerDelegate?
    
    enum AddItemFieldsTypes: String, CaseIterable {
//        case image = "Изображение"
        case itemName = "Наименование"
        case left = "Остаток"
        case vendorNum = "Артикул"
        case price = "Стоимость"
        case category = "Категория"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addItemToCollection.dataSource = self
        addItemToCollection.delegate = self
        addItemToCollection.register(UINib(nibName: "AddItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: AddItemCollectionViewCell.identifier)
        
        
        
        
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func saveButtonAction(_ sender: Any) {
        delegate?.addItem(warehouse)
        dismiss(animated: true, completion: nil)
        print(addItemArray)
        
    }
}



extension AddItemViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return addItemArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = addItemToCollection.dequeueReusableCell(withReuseIdentifier: AddItemCollectionViewCell.identifier, for: indexPath) as? AddItemCollectionViewCell
        cell?.setupWithh(type: addItemArray[indexPath.row])
        cell?.delegate = self
        return cell ?? AddItemCollectionViewCell()
        
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {  //функция размера ячейки
                let screenWidth = UIScreen.main.bounds.size.width
                let offset = 20
                let cellWidth = (Int(screenWidth) - offset * 2)
                let size2 = CGSize(width: cellWidth , height: 49)
                return size2
            
}
    
    
}



extension AddItemViewController: AddItemCollectionViewCellDelegate {
    func editedWith(type: AddItemFieldsTypes, value: String) {
     
        switch type {
        case .itemName:
            warehouse.title = value
        case .left:
            warehouse.left = value
        case .vendorNum:
            warehouse.vendorCode = value
        case .price:
            warehouse.price = value
        case .category:
            warehouse.category = value
        }
        
    }
}
