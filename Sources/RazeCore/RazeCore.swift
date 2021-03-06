import UIKit

public class RazeCore {
   
    /// Allows some cool stuff
    /// - Warning: Some crazy warning
    /// - Parameters:
    ///   - hexString: some hexString
    ///   - alpha: some alpha value
    /// - Returns: awesome return
    public class func colorFromHexString(_ hexString : String, alpha : CGFloat = 1.0) -> UIColor {
        
        let r,g,b : CGFloat
        let offset = hexString.hasPrefix("#") ? 1 : 0
        
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        
        let scanner = Scanner(string: hexColor)
        var hexNumber : UInt64 = 0
        
        if scanner.scanHexInt64(&hexNumber) {
            
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat(hexNumber & 0x0000ff) / 255
            
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
            
        }
            
        return UIColor.black
    }
    
    /// Something something appropirate
    static var secondaryRazeColor : UIColor {
        
        return colorFromHexString("FCFFFD")
    }
    
}
