import UIKit

class SettingsVC: UIViewController {


@IBOutlet
	var lblSettings: UILabel!
@IBOutlet
	var lblSettings1: UILabel!
@IBOutlet
	var lblYourSettingsS: UILabel!
@IBOutlet
	var lblPersonality: UILabel!
@IBOutlet
	var lblLanguage: UILabel!
@IBOutlet
	var lblTermsAndCondi: UILabel!
@IBOutlet
	var btn9: UIButton!
@IBOutlet
	var btn14: UIButton!
@IBOutlet
	var btn18: UIButton!
@IBOutlet
	var btnLogOut: UIButton!
@IBOutlet
	var img3: UIImageView!
@IBOutlet
	var img8: UIImageView!
@IBOutlet
	var img13: UIImageView!
@IBOutlet
	var img17: UIImageView!

override func viewDidLoad()  {
	super.viewDidLoad()
	}	

@IBAction func btn9(_ sender: UIAction)   {		

		 let vc = PersonalityVC.init(nibName:"PersonalityVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn14(_ sender: UIAction)   {		

		 let vc = LanguageVC.init(nibName:"LanguageVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btn18(_ sender: UIAction)   {		

		 let vc = TermsandconditionsVC.init(nibName:"TermsandconditionsVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}

@IBAction func btnLogOut(_ sender: UIAction)  {
}
}