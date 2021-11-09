import UIKit

extension UIView: NibCreatable {

    public static var nibBundle: Bundle? {
        return Bundle(for: self)
    }
    
    public static var nibName: String {
        return "\(self)"
    }
    
    public static func instanceFromNib() -> Self {
        return UINib(nibName: nibName, bundle: nibBundle).instantiate(withOwner: nil, options: nil).last as! Self
    }
}
