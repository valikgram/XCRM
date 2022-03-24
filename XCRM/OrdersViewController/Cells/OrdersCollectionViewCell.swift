import UIKit




class OrdersCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderNumberLabel: UILabel!
    @IBOutlet weak var clientNameLabel: UILabel!
    @IBOutlet weak var itemLabel: UILabel!
    
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var addOrderImage: UIImageView!
    
    static let identifier = "kOrdersCollectionViewCell"
   
    override func prepareForReuse() {
        super.prepareForReuse()
        addOrderImage.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
//        var count = 0
//        var convertCount = "A\(count+=1)"
        orderView.layer.borderWidth = 1
        orderView.layer.borderColor = UIColor.black.cgColor
        orderView.layer.cornerRadius = 16
    }
    
    
    
    func setupWith(order: Order) {
        var count = 0
//        let convertText = String("A\(count+=1)")
        priceLabel.text = order.discount
        clientNameLabel.text = order.buyer
        itemLabel.text = order.addItem
        orderNumberLabel?.text = String("A\(count+=1)")
//        orderNumberLabel.text = String(count)
    }

}

//class Counter {
//    var count: Int = 0
//    func increment() {
//        count += 1
////        var strCount = String(count)
//    }
//

