import UIKit

extension UIViewController: StoryboardCreatable {
    
    public static var storyboardBundle: Bundle? {
        return Bundle(for: self)
    }
    
    public static var storyboardIdentifier: String {
        return "\(self)"
    }
    
    public static func instanceFromStoryboard(storyboardName: String) -> Self {
        
        let storyboard: UIStoryboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        
        let storyboardViewController = storyboard.instantiateViewController(withIdentifier: storyboardIdentifier)
        
        guard let viewController = storyboardViewController as? Self else {
            fatalError(
                "View controller on storyboard named \(storyboardName) " +
                    "was expected to be an instance of type \(type(of: self)), " +
                    "but it's actually an instance of \(type(of: storyboardViewController)). " +
                "Fix the type in the storyboard and/or overrride `storyboardIdentifier` with the right value")
        }
        
        return viewController
    }
}
