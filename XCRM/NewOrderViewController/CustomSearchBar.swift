//import UIKit
//
//
//extension UIImage {
//    class func image(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
//        return UIGraphicsImageRenderer(size: size).image { rendererContext in
//            color.setFill()
//            rendererContext.fill(CGRect(origin: .zero, size: size))
//            
//        }
//    }
//}
//
//extension UISearchBar {
//    func customize() {
//        setSearchFieldBackgroundImage(UIImage.image(color: .white, size: CGSize(width: 1, height: 48)), for: .normal)
//        setSearchFieldBackgroundImage(UIImage(named: "Rectangle 1172-2"), for: .normal)
//        
//        // other settings
//        searchBarStyle = .default
//        searchTextPositionAdjustment = UIOffset(horizontal: 0, vertical: 0)
//        tintColor = .black
//        backgroundColor = .white
//        searchTextField.leftViewMode = .always
//        searchTextField.textColor = .black
//        //   searchTextField.backgroundColor = .clear
//        searchTextField.layer.borderColor = UIColor.lightGray.cgColor
//        searchTextField.cornerRadius = 10
//        // searchTextField.borderWidth = 1
//        image(for: .search, state: .normal)
//    }
//    
//    func textEdidting() {
//        setSearchFieldBackgroundImage(UIImage(named: "Rectangle 1172"), for: .normal)
//        
//        
//    }
//}
