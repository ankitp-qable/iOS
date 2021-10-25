import UIKit

class LoginVC: UIViewController {


@IBOutlet
	var lblLogin: UILabel!
@IBOutlet
	var lblThisIsYourCo: UILabel!
@IBOutlet
	var lblOurCommunityI: UILabel!
@IBOutlet
	var lblDonTHaveAnA: UILabel!
@IBOutlet
	var lblSignup: UILabel!
@IBOutlet
	var btnForgotPassword: UIButton!
@IBOutlet
	var btnNext: UIButton!
@IBOutlet
	var txt8: CustomTextField!
@IBOutlet
	var txt9: CustomTextField!
@IBOutlet
	var img3: UIImageView!
@IBOutlet
	var img7: UIImageView!

override func viewDidLoad()  {
	super.viewDidLoad()
	}	

@IBAction func btnForgotPassword(_ sender: UIAction)   {		

		 let vc = ForgotPasswordVC.init(nibName:"ForgotPasswordVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btnNext(_ sender: UIAction)   {		

		 let vc = HomeVC.init(nibName:"HomeVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}
}