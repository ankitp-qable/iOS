import UIKit

class Group99Cell: UITableViewCell {


@IBOutlet
	var lblResearchProduc: UILabel!
@IBOutlet
	var img4: UIImageView!
	override func awakeFromNib()  {
		super.awakeFromNib() 		
		self.selectionStyle = .none
	}
	override func setSelected(_ selected: Bool, animated: Bool)  {		
		super.setSelected(selected, animated: animated)
	}
}