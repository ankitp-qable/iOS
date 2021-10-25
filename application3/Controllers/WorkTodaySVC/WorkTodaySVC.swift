import UIKit

class WorkTodaySVC: UIViewController {


@IBOutlet
	var lblWorkTodayS: UILabel!
@IBOutlet
	var lblWorkTodayS1: UILabel!
@IBOutlet
	var lblMakeYourJobE: UILabel!
@IBOutlet
	var lblToday: UILabel!
@IBOutlet
	var lblApril: UILabel!
@IBOutlet
	var btnMakeAWishLis: UIButton!
@IBOutlet
	var img3: UIImageView!
@IBOutlet
	var img6: UIImageView!
@IBOutlet
	var tbl7: UITableView!
var group99CellClass: Group99CellClass!

override func viewDidLoad()  {
	super.viewDidLoad()		

	tbl7.register(UINib(nibName: "Group99Cell", bundle: nil), forCellReuseIdentifier: "Group99Cell")		
	group99CellClass = Group99CellClass(tblView: tbl7)		
	tbl7.delegate = group99CellClass		
	tbl7.dataSource = group99CellClass		
	tbl7.reloadData()
	}	

@IBAction func btnMakeAWishLis(_ sender: UIAction)   {		

		 let vc = WishListVC.init(nibName:"WishListVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}
}