import UIKit

public protocol NibCreatable: AnyObject {
    static var nibBundle: Bundle? { get }
    static var nibName: String { get }
    static func instanceFromNib() -> Self
}
      
