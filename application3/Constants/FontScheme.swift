import UIKit

class FontScheme : NSObject {

  static func kPoppinsSemiBold(size: CGFloat) -> UIFont {
    return UIFont(name:FontConstant.kPoppinsSemiBold, size: size) ?? UIFont.systemFont(ofSize: size)
  }

  static func kPoppinsBold(size: CGFloat) -> UIFont {
    return UIFont(name:FontConstant.kPoppinsBold, size: size) ?? UIFont.systemFont(ofSize: size)
  }

  static func kPoppinsMedium(size: CGFloat) -> UIFont {
    return UIFont(name:FontConstant.kPoppinsMedium, size: size) ?? UIFont.systemFont(ofSize: size)
  }

  static func kPoppinsRegular(size: CGFloat) -> UIFont {
    return UIFont(name:FontConstant.kPoppinsRegular, size: size) ?? UIFont.systemFont(ofSize: size)
  }

  static func fontFromConstant(fontName: String, size: CGFloat) -> UIFont {

    var result = UIFont()

    switch fontName {
    case "kPoppinsSemiBold": 
        result = self.kPoppinsSemiBold(size: size) 
         break
    case "kPoppinsBold": 
        result = self.kPoppinsBold(size: size) 
         break
    case "kPoppinsMedium": 
        result = self.kPoppinsMedium(size: size) 
         break
    case "kPoppinsRegular": 
        result = self.kPoppinsRegular(size: size) 
         break
    default:  
         result = self.kPoppinsSemiBold(size: size) 
         break
    }
    return result
  }

  struct FontConstant {

    /**
     * Please Add this fonts Manually
     */
    static let kPoppinsSemiBold: String = "Poppins-SemiBold"
    /**
     * Please Add this fonts Manually
     */
    static let kPoppinsBold: String = "Poppins-Bold"
    /**
     * Please Add this fonts Manually
     */
    static let kPoppinsMedium: String = "Poppins-Medium"
    /**
     * Please Add this fonts Manually
     */
    static let kPoppinsRegular: String = "Poppins-Regular"

  }

}
