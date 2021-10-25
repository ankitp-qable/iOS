//
//  UIButtonExtension.swift
//  application3
//

import UIKit

var btnFont = ""
var btnFontSize: CGFloat = 12.0

extension UIButton {

    @IBInspectable var FontName : String {
        set {
            btnFont = newValue
            self.updateFontSchema()
        }

        get {
            return "kPoppinsSemiBold"
        }
    }

    @IBInspectable var FontSize : CGFloat {
        set {
            btnFontSize = newValue
            self.updateFontSchema()
        }

        get {
            return 12
        }
    }
    
    
    @IBInspectable var ButtonTitle : String {
        set {
            return self.setTitle(StringScheme.stringFromConstant(stringName: newValue), for: .normal)
        }

        get {
            return ""
        }
    }

    func updateFontSchema() {
        
        self.titleLabel?.font = FontScheme.fontFromConstant(fontName: btnFont, size: btnFontSize)
    }
    
}

