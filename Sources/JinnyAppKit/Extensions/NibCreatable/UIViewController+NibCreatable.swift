import UIKit

extension UIViewController: NibCreatable {
    
    public static var nibBundle: Bundle? {
        return Bundle(for: self)
    }
    
    public static var nibName: String {
        return "\(self)"
    }
    
    public static func instanceFromNib() -> Self {
        return Self.init(nibName: nibName, bundle: nibBundle)
    }
}
