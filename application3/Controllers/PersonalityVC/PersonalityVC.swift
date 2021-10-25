import UIKit

class PersonalityVC: UIViewController {


@IBOutlet
	var lblPersonality: UILabel!
@IBOutlet
	var lblEditPhoto: UILabel!
@IBOutlet
	var lblUsername: UILabel!
@IBOutlet
	var lblFirstName: UILabel!
@IBOutlet
	var lblLastName: UILabel!
@IBOutlet
	var lblHobby: UILabel!
@IBOutlet
	var lblDateOfBirth: UILabel!
@IBOutlet
	var lblCountry: UILabel!
@IBOutlet
	var btnChangeSave: UIButton!
@IBOutlet
	var txt8: CustomTextField!
@IBOutlet
	var txt9: CustomTextField!
@IBOutlet
	var txt10: CustomTextField!
@IBOutlet
	var txt11: CustomTextField!
@IBOutlet
	var txt12: CustomTextField!
@IBOutlet
	var txt13: CustomTextField!
@IBOutlet
	var img3: UIImageView!
@IBOutlet
	var img6: UIImageView!

override func viewDidLoad()  {
	super.viewDidLoad()
	}	

override func viewDidLayoutSubviews()  {
	super.viewDidLayoutSubviews()		
		img6.layer.cornerRadius = img6.frame.height / 2
	}

@IBAction func btnChangeSave(_ sender: UIAction)   {		

		 let vc = WorkTodaySVC.init(nibName:"WorkTodaySVC", bundle: nil)
		 self.navigationController?.pushViewController(vc, animated: true)
	}
}