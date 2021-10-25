import UIKit

class SignupVC: UIViewController {


@IBOutlet
	var lblSignUp: UILabel!
@IBOutlet
	var lblWhenCommunity: UILabel!
@IBOutlet
	var lblOurCommunityI: UILabel!
@IBOutlet
	var lblLoremIpsumDol: UILabel!
@IBOutlet
	var lblAlreadyHaveAn: UILabel!
@IBOutlet
	var lblLogin: UILabel!
@IBOutlet
	var btnNext: UIButton!
@IBOutlet
	var txt7: CustomTextField!
@IBOutlet
	var txt8: CustomTextField!
@IBOutlet
	var txt9: CustomTextField!
@IBOutlet
	var txt10: CustomTextField!
@IBOutlet
	var img3: UIImageView!
@IBOutlet
	var img6: UIImageView!

override func viewDidLoad()  {
	super.viewDidLoad()
	}	

@IBAction func btnNext(_ sender: UIAction)   {		

		 let vc = HomeVC.init(nibName:"HomeVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}
}