//
//  UILabelExtension.swift
//  application3
//

import UIKit

var lblFont = ""
var lblFontSize: CGFloat = 12.0

extension UILabel {
    @IBInspectable var FontName : String {
        set {
            lblFont = newValue
            self.updateFontSchema()
        }

        get {
            return "kPoppinsSemiBold"
        }
    }

    @IBInspectable var FontSize : CGFloat {
        set {
            lblFontSize = newValue
            self.updateFontSchema()
        }

        get {
            return 12
        }
    }

    @IBInspectable var LabelText : String {
        set {
            return self.text = StringScheme.stringFromConstant(stringName: newValue)
        }

        get {
            return ""
        }
    }

    func updateFontSchema() {
            self.font = FontScheme.fontFromConstant(fontName: lblFont, size: lblFontSize)
        
    }

}

open class CustomLabel: UILabel {
    
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
