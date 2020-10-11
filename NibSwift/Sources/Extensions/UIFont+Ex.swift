import Foundation
import UIKit

extension UIFont {
    
    public static func fontListLog() {
        UIFont.familyNames.forEach {
            print("familyNames : \($0)")
            UIFont.fontNames(forFamilyName: $0).forEach { print("     fontNames : \($0)") }
            print("----------------------------------------------------")
        }
    }
}
