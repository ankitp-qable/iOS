//
//  CustomRadioButton.swift
//  application3
//


import UIKit

@IBDesignable
public class CustomRadioButton: UIButton {
    
    var indexPath:IndexPath!
    
    
    static let kGeneratedIconName:String = "Generated Icon"

    static var  _groupModifing:Bool = false
    
    //      Container for holding other buttons in same group.
    
    @IBOutlet var otherButtons: Array<CustomRadioButton>?
    
    //      Size of icon, default is 15.0.
    
    @IBInspectable public var iconSize:CGFloat = 15.0
    
    //    Size of selection indicator, default is iconSize * 0.5.
    
    @IBInspectable public var indicatorSize:CGFloat = 15.0 * 0.5
    
    @IBInspectable public var iconColor:UIColor =  UIColor.black

    //      Color of icon, default is black
    
    
    //      Stroke width of icon, default is iconSize / 9.
    
    @IBInspectable public var iconStrokeWidth:CGFloat = 1.6
    
    //      Color of selection indicator, default is black
    
    @IBInspectable public var indicatorColor:UIColor = UIColor.black


    //      Margin width between icon and title, default is 10. 0.
    
    @IBInspectable public var marginWidth:CGFloat = 10.0
    
    //      Whether icon on the right side, default is NO.
    
    @IBInspectable public var iconOnRight:Bool = false
    
    //      Whether use square icon, default is NO.
    
    @IBInspectable public var iconSquare:Bool = false
    
    //      Image for radio button icon (optional).
    
    @IBInspectable public var icon:UIImage!
    
    //      Image for radio button icon when selected (optional).
    
    @IBInspectable public var iconSelected:UIImage!
    
    //      Whether enable multiple selection, default is NO.
    
    @IBInspectable public var multipleSelectionEnabled:Bool = false
    
    private var setOtherButtons:NSArray {
        get{
            return otherButtons! as NSArray
        }
        set (newValue) {
            if (!self.isGroupModifing()){
                self.groupModifing(chaining: true)
                let otherNewButtons:Array<CustomRadioButton>? = newValue as? Array<CustomRadioButton>
                for radioButton in otherNewButtons!{
                    let otherButtonsForCurrentButton:NSMutableArray = NSMutableArray(array:otherNewButtons!)
                    otherButtonsForCurrentButton.add(self)
                    otherButtonsForCurrentButton.remove(radioButton)
                    radioButton.setOtherButtons = otherButtonsForCurrentButton
                }
                self.groupModifing(chaining: false)
            }
            self.otherButtons = newValue as? Array<CustomRadioButton>
        }
    }
    
    @IBInspectable public var setIcon:UIImage {
        // Avoid to use getter it can be nill
        get{
            return icon
        }
        
        set (newValue){
            icon = newValue
            self.setImage(icon, for: .normal)
        }
    }
    
    @IBInspectable public var setIconSelected:UIImage {
        
        // Avoid to use getter it can be nill
        
        get{
            return iconSelected
        }
        
        set (newValue){
            iconSelected = newValue
            self.setImage(iconSelected, for: .selected)
            self.setImage(iconSelected, for: .highlighted)
        }
    }
        
    
    public var setMultipleSelectionEnabled:Bool {
        
        get{
            return multipleSelectionEnabled
        }
        set (newValue) {
            if (!self.isGroupModifing()){
                self.groupModifing(chaining: true)
                if self.otherButtons != nil {
                    for radioButton in self.otherButtons!{
                        radioButton.multipleSelectionEnabled = newValue
                    }
                }
                self.groupModifing(chaining: false)
            }
            multipleSelectionEnabled = newValue
        }
    }
    
    
    // MARK: -- Helpers
    
    func drawButton (){
        if (self.icon == nil){
                self.setIcon = self.drawIconWithSelection(false)
        }else{
            self.setIcon = self.icon ;
        }
        
        if (iconSelected == nil){
                self.setIconSelected = self.drawIconWithSelection(true)
        }else{
            self.setIconSelected = self.iconSelected;
        }
        
        if self.otherButtons != nil {
            self.setOtherButtons = self.otherButtons! as NSArray
        }
        
        if multipleSelectionEnabled {
            self.setMultipleSelectionEnabled = multipleSelectionEnabled
        }
        
        if self.iconOnRight {
            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.frame.size.width - self.icon.size.width + marginWidth, bottom: 0, right: 0);
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: marginWidth + self.icon.size.width);
            self.contentHorizontalAlignment = .right
        } else {
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: marginWidth, bottom: 0, right: 0);
            self.titleLabel?.textAlignment = .left
            self.contentHorizontalAlignment = .left
        }
        self.titleLabel?.adjustsFontSizeToFitWidth = false
    }
    
    func drawIconWithSelection (_ selected:Bool) -> UIImage{
        
        let rect:CGRect = CGRect(x: 0, y: 0, width: iconSize, height: iconSize)
        let context  = UIGraphicsGetCurrentContext()
//        UIGraphicsPushContext(context!)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0);
        // draw icon
        
        var iconPath:UIBezierPath!
        let iconRect:CGRect = CGRect(x: iconStrokeWidth / 2, y: iconStrokeWidth / 2, width: iconSize - iconStrokeWidth, height: iconSize - iconStrokeWidth);
        if self.iconSquare {
            iconPath = UIBezierPath(rect:iconRect )
        } else {
            iconPath = UIBezierPath(ovalIn:iconRect)
        }
        iconColor.setStroke()
        iconPath.lineWidth = iconStrokeWidth;
        iconPath.stroke()
        context?.addPath(iconPath.cgPath);
        
        // draw indicator
        if (selected) {
            var indicatorPath:UIBezierPath!
            let indicatorRect:CGRect = CGRect(x: (iconSize - indicatorSize) / 2, y: (iconSize - indicatorSize) / 2, width: indicatorSize, height: indicatorSize);
            if self.iconSquare {
                indicatorPath = UIBezierPath(rect:indicatorRect )
            } else {
                indicatorPath = UIBezierPath(ovalIn:indicatorRect)
            }
            indicatorColor.setStroke()
            indicatorPath.lineWidth = iconStrokeWidth;
            indicatorPath.stroke()
            
            indicatorColor.setFill()
            indicatorPath.fill()
            context?.addPath(indicatorPath.cgPath);
        }
        
        let image:UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
//        UIGraphicsPopContext()
        UIGraphicsEndImageContext();
        image.accessibilityIdentifier = CustomRadioButton.kGeneratedIconName;
        return image;
    }
    
    @objc func touchDown () {
//        if self.isSelected {
//            self.isSelected = false
//        }else{
            self.isSelected = true
//        }
    }
    
    func initRadioButton () {
        super.addTarget(self, action:#selector(CustomRadioButton.touchDown), for:.touchUpInside)
//        self.isSelected = false
    }
    
    override public func prepareForInterfaceBuilder () {
        self.initRadioButton()
        self.drawButton()
    }
    
    // MARK: -- CustomRadioButton
    
    func groupModifing(chaining:Bool) {
        CustomRadioButton._groupModifing = chaining
    }
    
    func isGroupModifing() -> Bool {
        return CustomRadioButton._groupModifing
    }
    
    //    @return Selected button in same group.
    
    public func selectedButton() -> CustomRadioButton!{
        if !self.multipleSelectionEnabled {
            if self.isSelected {
                return self
            }
        }else{
            for CustomRadioButton in self.otherButtons!  {
                if CustomRadioButton.isSelected {
                    return CustomRadioButton
                }
            }
        }
        return nil
    }
    
    //    @return Selected buttons in same group, use it only if multiple selection is enabled.
    
    public func selectedButtons() -> NSMutableArray{
        
        let selectedButtons:NSMutableArray = NSMutableArray ()
        if self.isSelected {
            selectedButtons.add(self)
        }
        for radioButton in self.otherButtons!  {
            if radioButton.isSelected {
                selectedButtons .add(self)
            }
        }
        return selectedButtons;
    }
    
    //    Clears selection for other buttons in in same group.
    
    public func deselectOtherButtons() {
        if self.otherButtons != nil {
            for radioButton in self.otherButtons!  {
                radioButton.isSelected = false
            }
        }
    }
    
    //    @return unselected button in same group.
    
    public func unSelectedButtons() -> NSArray{
        let unSelectedButtons:NSMutableArray = NSMutableArray ()
        if self.isSelected == false {
            unSelectedButtons.add(self)
        }
        for CustomRadioButton in self.otherButtons!  {
            if CustomRadioButton.isSelected == false {
                unSelectedButtons.add(self)
            }
        }
        return unSelectedButtons ;
    }
    
    // MARK: -- UIButton
    
    override public func titleColor(for state:UIControl.State) -> UIColor{
        if (state == UIControl.State.selected || state == UIControl.State.highlighted){
            var selectedOrHighlightedColor:UIColor!
            if (state == UIControl.State.selected) {
                selectedOrHighlightedColor = super.titleColor(for: .selected)
            }else{
                selectedOrHighlightedColor = super.titleColor(for: .highlighted)
            }
            self.setTitleColor(selectedOrHighlightedColor, for: .selected)
            self.setTitleColor(selectedOrHighlightedColor, for: .highlighted)
        }
        return super.titleColor(for: state)!
    }
    
    // MARK: -- UIControl
    
    override public var isSelected: Bool {
        
        didSet {
            
            
            if (multipleSelectionEnabled) {
                if oldValue == true && self.isSelected == true {
                    super.isSelected = false
                }else{
                    super.isSelected = true
                }
            }else {
                if ( oldValue == false && self.isSelected == true ) {
                     self.deselectOtherButtons()
                }
            }
        }
    }
    
    // MARK: -- UIView
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.initRadioButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initRadioButton()
    }
    
    override public func draw(_ rect:CGRect) {
        super.draw(rect)
        self.drawButton()
    }
}
