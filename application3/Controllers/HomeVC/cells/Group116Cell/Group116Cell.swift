import UIKit

class Group116Cell: UITableViewCell {


@IBOutlet
	var lblPersonality: UILabel!
@IBOutlet
	var img3: UIImageView!
@IBOutlet
	var img4: UIImageView!

override func layoutSubviews()  {
	super.layoutSubviews()		
		let margins = UIEdgeInsets(top: 13.0, left: 0, bottom: 0, right: 0)		
		contentView.frame = contentView.frame.inset(by: margins)
	}
	override func awakeFromNib()  {
		super.awakeFromNib() 		
		self.selectionStyle = .none
	}
	override func setSelected(_ selected: Bool, animated: Bool)  {		
		super.setSelected(selected, animated: animated)
	}
}