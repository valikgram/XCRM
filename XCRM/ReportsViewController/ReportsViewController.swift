import UIKit

class ReportsViewController: UIViewController {
    
    @IBOutlet var viewsCollection: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewsCollection[0].layer.borderWidth = 1
        viewsCollection[0].layer.borderColor = UIColor.black.cgColor
        viewsCollection[0].layer.cornerRadius = 16
        viewsCollection[1].layer.borderWidth = 1
        viewsCollection[1].layer.borderColor = UIColor.black.cgColor
        viewsCollection[1].layer.cornerRadius = 16
        viewsCollection[2].layer.borderWidth = 1
        viewsCollection[2].layer.borderColor = UIColor.black.cgColor
        viewsCollection[2].layer.cornerRadius = 16
        viewsCollection[3].layer.borderWidth = 1
        viewsCollection[3].layer.borderColor = UIColor.black.cgColor
        viewsCollection[3].layer.cornerRadius = 16
        viewsCollection[4].layer.borderWidth = 1
        viewsCollection[4].layer.borderColor = UIColor.black.cgColor
        viewsCollection[4].layer.cornerRadius = 16
        viewsCollection[5].layer.borderWidth = 1
        viewsCollection[5].layer.borderColor = UIColor.black.cgColor
        viewsCollection[5].layer.cornerRadius = 16
    }
//
}

extension UIView {
    public func addViewBorder(borderColor:CGColor,borderWith:CGFloat,borderCornerRadius:CGFloat){
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 16
        
    }
}
