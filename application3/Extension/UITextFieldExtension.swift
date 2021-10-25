//
//  UITextFieldExtension.swift
//  application3
//


import Foundation
import UIKit

var txtFont = ""
var txtFontSize: CGFloat = 12.0

extension UITextField {
    
    
    @IBInspectable var FontName : String {
        set {
            txtFont = newValue
            self.updateFontSchema()
        }

        get {
            return "kBoldSFProDisplay"
        }
    }

    @IBInspectable var FontSize : CGFloat {
        set {
            txtFontSize = newValue
            self.updateFontSchema()
        }

        get {
            return 12
        }
    }

    @IBInspectable var txtTitle : String {
        set {
            return self.text = StringScheme.stringFromConstant(stringName: newValue)
        }

        get {
            return ""
        }
    }
    
    @IBInspectable var txtPlaceholder : String {
        set {
            return self.placeholder = StringScheme.stringFromConstant(stringName: newValue)
        }

        get {
            return ""
        }
    }


    func updateFontSchema() {
            self.font = FontScheme.fontFromConstant(fontName: txtFont, size: txtFontSize)
    }

}

open class CustomTextField: UITextField {
    
    @IBInspectable var topInset: CGFloat = 0.0
    @IBInspectable var bottomInset: CGFloat = 0.0
    @IBInspectable var leftInset: CGFloat = 0.0
    @IBInspectable var rightInset: CGFloat = 0.0
    
    override open func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override open var intrinsicContentSize: CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
