import UIKit

class LoginSignupVC: UIViewController {


@IBOutlet
	var lblWorksTodays: UILabel!
@IBOutlet
	var lblWelcomeToOur: UILabel!
@IBOutlet
	var lblOurCommunityI: UILabel!
@IBOutlet
	var lblGetInThrough: UILabel!
@IBOutlet
	var btnSignUp: UIButton!
@IBOutlet
	var btnLogin: UIButton!
@IBOutlet
	var img3: UIImageView!
@IBOutlet
	var img6: UIImageView!

override func viewDidLoad()  {
	super.viewDidLoad()
	}	

@IBAction func btnSignUp(_ sender: UIAction)   {		

		 let vc = SignupVC.init(nibName:"SignupVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btnLogin(_ sender: UIAction)   {		

		 let vc = LoginVC.init(nibName:"LoginVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}
}