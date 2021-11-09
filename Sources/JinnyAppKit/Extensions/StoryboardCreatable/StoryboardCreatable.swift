import UIKit

public protocol StoryboardCreatable: AnyObject {
    static var storyboardBundle: Bundle? { get }
    static var storyboardIdentifier: String { get }
    
    static func instanceFromStoryboard(storyboardName: String) -> Self
}

