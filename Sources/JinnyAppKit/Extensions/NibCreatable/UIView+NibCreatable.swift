import UIKit

// extensions 내의 override를 허용하려면 @objc 키워드 필요함.
extension UIView: NibCreatable {
    public final class var nib: UINib {
        let nibName = Self.nibName
        let nibBundle = Self.nibBundle
        return UINib(nibName: nibName, bundle: nibBundle)
    }
    
    @objc
    public class var nibBundle: Bundle? {
        return Bundle(for: self)
    }
    
    @objc
    public class var nibName: String {
        return "\(self)"
    }
    
    public final class func instanceFromNib() -> Self {
        return nib.instantiate(withOwner: nil, options: nil).last as! Self
    }
}


// Self와 self의 차이: https://www.hackingwithswift.com/example-code/language/self-vs-self-whats-the-difference
