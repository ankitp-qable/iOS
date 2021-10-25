
//  Utilities.swift
//  application3


import UIKit

class Utilities {

    static func showAlert(title: String, message: String) {

        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)

        //displaying alert dialog on VC
        if let keyWindow = UIWindow.key {
        keyWindow.rootViewController!.present(alertController, animated: true, completion: nil)
            alertController.show(alertController, sender: nil)
        }
    }

}

//MARK: -
extension UIWindow {
    static var key: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}
