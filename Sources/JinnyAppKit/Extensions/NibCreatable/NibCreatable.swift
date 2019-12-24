import UIKit

public protocol NibCreatable: class {
    static var nib: UINib { get }
    static var nibBundle: Bundle? { get }
    static var nibName: String { get }
    static func instanceFromNib() -> Self
}
      
