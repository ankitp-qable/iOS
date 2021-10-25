//
//  UIViewExtension.swift
//  application3
//

import UIKit

//MARK: UIView IBInspactable
extension UIView {
    
    @IBInspectable
    var shadowColor: UIColor {
        get{
            return UIColor(cgColor: layer.shadowColor ?? UIColor.gray.cgColor)
        }
        
        set {
            layer.shadowColor =  newValue.cgColor
        }
    }

      @IBInspectable var shadowOpacity: Float{
          set {
              layer.shadowOpacity = newValue
            if newValue > 0 {
                 self.addShadow()
            }
          }
          get{
              return layer.shadowOpacity
          }
      }

      @IBInspectable var shadowOffset: CGSize{
          set {
              layer.shadowOffset = newValue
          }
          get{
              return layer.shadowOffset
          }
      }

      @IBInspectable var shadowRadius: CGFloat{
          set {
              layer.shadowRadius = newValue
          }
          get{
              return layer.shadowRadius
          }
      }
    

     fileprivate func addShadow() {
          let layer = self.layer
          layer.masksToBounds = false

        layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: layer.cornerRadius).cgPath

          let backgroundColor = self.backgroundColor?.cgColor
          self.backgroundColor = nil
          layer.backgroundColor =  backgroundColor
     }

    
     @IBInspectable var cornerRadius: CGFloat {
          get {
               return self.layer.cornerRadius
          }

          set {
               self.layer.cornerRadius = newValue
          }
     }


    // Border Color

    @IBInspectable
    var BorderColorKey: UIColor {
        get{
            return UIColor(cgColor: layer.borderColor ?? UIColor.gray.cgColor)
        }
        
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
     // Border width
     @IBInspectable
     public var borderWidth: CGFloat {
          set {
               layer.borderWidth = newValue
          }

          get {
               return layer.borderWidth
          }
     }


}


