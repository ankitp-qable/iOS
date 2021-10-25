import UIKit

class AppNavigationVC: UIViewController {


@IBOutlet
	var lblAppNavigation: UILabel!
@IBOutlet
	var lblCheckYourApp: UILabel!
@IBOutlet
	var lblLoginSignup: UILabel!
@IBOutlet
	var lblLogin: UILabel!
@IBOutlet
	var lblForgotPassword: UILabel!
@IBOutlet
	var lblWorkTodayS: UILabel!
@IBOutlet
	var lblWishList: UILabel!
@IBOutlet
	var lblSettings: UILabel!
@IBOutlet
	var lblLanguage: UILabel!
@IBOutlet
	var lblHome: UILabel!
@IBOutlet
	var lblPersonality: UILabel!
@IBOutlet
	var lblSignup: UILabel!
@IBOutlet
	var lblTermsandconditi: UILabel!
@IBOutlet
	var btn7: UIButton!
@IBOutlet
	var btn10: UIButton!
@IBOutlet
	var btn13: UIButton!
@IBOutlet
	var btn16: UIButton!
@IBOutlet
	var btn19: UIButton!
@IBOutlet
	var btn22: UIButton!
@IBOutlet
	var btn25: UIButton!
@IBOutlet
	var btn28: UIButton!
@IBOutlet
	var btn31: UIButton!
@IBOutlet
	var btn34: UIButton!
@IBOutlet
	var btn37: UIButton!

override func viewDidLoad()  {
	super.viewDidLoad()
	}	

@IBAction func btn7(_ sender: UIAction)   {		

		 let vc = LoginSignupVC.init(nibName:"LoginSignupVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn10(_ sender: UIAction)   {		

		 let vc = LoginVC.init(nibName:"LoginVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn13(_ sender: UIAction)   {		

		 let vc = ForgotPasswordVC.init(nibName:"ForgotPasswordVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn16(_ sender: UIAction)   {		

		 let vc = WorkTodaySVC.init(nibName:"WorkTodaySVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn19(_ sender: UIAction)   {		

		 let vc = WishListVC.init(nibName:"WishListVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn22(_ sender: UIAction)   {		

		 let vc = SettingsVC.init(nibName:"SettingsVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn25(_ sender: UIAction)   {		

		 let vc = LanguageVC.init(nibName:"LanguageVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn28(_ sender: UIAction)   {		

		 let vc = HomeVC.init(nibName:"HomeVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn31(_ sender: UIAction)   {		

		 let vc = PersonalityVC.init(nibName:"PersonalityVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn34(_ sender: UIAction)   {		

		 let vc = SignupVC.init(nibName:"SignupVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn37(_ sender: UIAction)   {		

		 let vc = TermsandconditionsVC.init(nibName:"TermsandconditionsVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}
}