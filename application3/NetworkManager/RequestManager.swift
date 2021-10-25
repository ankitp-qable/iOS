//
//  RequestManager.swift
//  application3
//


import Alamofire
import NVActivityIndicatorView

public typealias FailureMessage = String
public typealias FailureCode    = String

class NetworkClient {
    
    // A Singleton instance
    static let sharedInstance = NetworkClient()
    
    // A network reachability instance
    let networkReachability = NetworkReachabilityManager()
    
    private var requestsToRetry: [RequestRetryCompletion] = []
    
    // Initialize
    private init() {
        networkReachability?.startListening()
        setIndicatorViewDefaults()
    }
    
    // MARK: - Indicator view
    private func setIndicatorViewDefaults() {
        
        NVActivityIndicatorView.DEFAULT_TYPE = .ballRotateChase
        NVActivityIndicatorView.DEFAULT_COLOR = UIColor.white
        NVActivityIndicatorView.DEFAULT_BLOCKER_SIZE = CGSize(width: 40, height: 40)
        NVActivityIndicatorView.DEFAULT_BLOCKER_MESSAGE_FONT = UIFont.boldSystemFont(ofSize: 17)
    }
    
    func isNetworkAvailable() -> Bool {
        
        guard (networkReachability?.isReachable)! else {
            return false
        }
        
        return true
    }
    
    // show indicator before network request
    func showIndicator(_ message:String?, stopAfter: Double) {
        
        let activityData = ActivityData(message: message)
        NVActivityIndicatorPresenter.sharedInstance.startAnimating(activityData)
        
        if stopAfter > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + stopAfter) {
                NVActivityIndicatorPresenter.sharedInstance.stopAnimating()
            }
        }
    }
    
    //Stop Indicator Manually
    func stopIndicator() {
        NVActivityIndicatorPresenter.sharedInstance.stopAnimating()
    }
    
    // Show indicator
    func showIndicatorInView(view: UIView) -> NVActivityIndicatorView {
        
        let indicatorView = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 40, height: 40), type: NVActivityIndicatorType.ballScaleMultiple, color: UIColor.gray.withAlphaComponent(0.8))
        indicatorView.center = view.center
        view.superview?.addSubview(indicatorView)
        
        indicatorView.startAnimating()
        return indicatorView
    }
    
    
    // MARK: - Network Request
    
    // Global function to call web service
    func request(_ url: URLConvertible, command: String, method: HTTPMethod = .get, parameters: Parameters? = nil, headers: HTTPHeaders? = nil, success:@escaping ((Any, String)->Void), failure:@escaping ((FailureMessage,FailureCode)->Void)) {
        
        // check network reachability
        guard (networkReachability?.isReachable)! else {
            
            NVActivityIndicatorPresenter.sharedInstance.stopAnimating()
            Utilities.showAlert(title: "Error", message: "No Internet Connection.")
            return
        }
        
        var serverUrl = "\(url)"
        
        if serverUrl == "" {
            serverUrl = AppConstants.serverURL
        }
        
        // create final url
        let finalURLString: String = "\(serverUrl)\(command)"
        let finalURL = NSURL(string : finalURLString)! as URL
        
        // Network request
        Alamofire.request(finalURL, method: method, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (response: DataResponse<Any>) in
            
            NVActivityIndicatorPresenter.sharedInstance.stopAnimating()
            
            // check result is success
            guard response.result.isSuccess else {
                failure((response.result.error?.localizedDescription)!,"")
                return
            }
            
            if let responseObject = response.result.value as? [String: Any] {
                success(responseObject, response.result.description)
            }
        }
    }
}
