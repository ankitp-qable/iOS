import UIKit

class ForgotPasswordVC: UIViewController {


@IBOutlet
	var lblForgotPassword: UILabel!
@IBOutlet
	var lblHelpingOthers: UILabel!
@IBOutlet
	var lblIfYouAreAlwa: UILabel!
@IBOutlet
	var lblForgotPassword1: UILabel!
@IBOutlet
	var lblLoremIpsumDol: UILabel!
@IBOutlet
	var btnStart: UIButton!
@IBOutlet
	var txt7: CustomTextField!
@IBOutlet
	var img3: UIImageView!
@IBOutlet
	var img6: UIImageView!

override func viewDidLoad()  {
	super.viewDidLoad()
	}	

@IBAction func btnStart(_ sender: UIAction)   {		

		 let vc = HomeVC.init(nibName:"HomeVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}
}