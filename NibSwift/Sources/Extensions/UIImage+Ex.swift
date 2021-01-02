import UIKit

extension UIImage {
    
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
    
    public static func resize(image: UIImage, to size: CGSize) -> UIImage? {
        let widthRatio  = size.width  / image.size.width
        let heightRatio = size.height / image.size.height
        
        let newSize = widthRatio > heightRatio ?
            CGSize(width: image.size.width * heightRatio,height: image.size.height * heightRatio) :
            CGSize(width: image.size.width * widthRatio, height: image.size.height * widthRatio)
        
        let rect = CGRect(x:0, y:0, width:newSize.width, height:newSize.height)
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
}
