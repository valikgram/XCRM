import UIKit

final class ProfileViewController: UIViewController {

    
    @IBOutlet var profileOutlet: [UIView]!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileOutlet[0].layer.borderWidth = 1
        profileOutlet[0].layer.borderColor = UIColor.black.cgColor
        profileOutlet[0].layer.cornerRadius = 16
        profileOutlet[1].layer.borderWidth = 1
        profileOutlet[1].layer.borderColor = UIColor.black.cgColor
        profileOutlet[1].layer.cornerRadius = 16
        profileOutlet[2].layer.borderWidth = 1
        profileOutlet[2].layer.borderColor = UIColor.black.cgColor
        profileOutlet[2].layer.cornerRadius = 16
        profileOutlet[3].layer.borderWidth = 1
        profileOutlet[3].layer.borderColor = UIColor.black.cgColor
        profileOutlet[3].layer.cornerRadius = 16
        profileOutlet[4].layer.borderWidth = 1
        profileOutlet[4].layer.borderColor = UIColor.black.cgColor
        profileOutlet[4].layer.cornerRadius = 16

        
        
    }
    @IBAction func supportAction(_ sender: Any) {
        if let url = URL(string: "https://t.me/va1erone") {
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
        
    }
    
}
}
