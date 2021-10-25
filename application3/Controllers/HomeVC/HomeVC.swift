import UIKit

class HomeVC: UIViewController {


@IBOutlet
	var lblAdalah: UILabel!
@IBOutlet
	var lblAlcanasatre: UILabel!
@IBOutlet
	var lblJoined6Month: UILabel!
@IBOutlet
	var img1: UIImageView!
@IBOutlet
	var view3: UIView!
@IBOutlet
	var view4: UIView!
@IBOutlet
	var tbl2: UITableView!
var group116CellClass: Group116CellClass!

override func viewDidLoad()  {
	super.viewDidLoad()		

	tbl2.register(UINib(nibName: "Group116Cell", bundle: nil), forCellReuseIdentifier: "Group116Cell")		
	group116CellClass = Group116CellClass(tblView: tbl2)		
	tbl2.delegate = group116CellClass		
	tbl2.dataSource = group116CellClass		
	tbl2.reloadData()
	}	

override func viewDidLayoutSubviews()  {
	super.viewDidLayoutSubviews()		
		img1.layer.cornerRadius = img1.frame.height / 2		
		view3.layer.cornerRadius = view3.frame.height / 2		
		view4.layer.cornerRadius = view4.frame.height / 2
	}
}