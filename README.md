### Prerequisites

- Xcode 12
- Swift 5
- Platform iOS 13+
- Cocoapods-1.10.1
- macOS Catalina Version 10.15.4 or later

### After Download
- Install Cocoapods `pod install`
- Open `ProjectName.xcworkspace`

### App Navigation
Check your app's UI from the AppNavigation screens of your app.


### Libraries

1. IQKeyboardManager : For keyboard
https://github.com/hackiftekhar/IQKeyboardManager

2. NVActivityIndicatorView : For Activity Loader
https://github.com/ninjaprox/NVActivityIndicatorView

3. Alamofire : For REST API call
https://github.com/Alamofire/Alamofire


### Project Structure
```
├── application3.xcodeproj  - it lets you create and modify Xcode projects from Ruby.      
│ 
├── application3            - Application components folder
│ ├── Application       - Application configuration files
│ ├── Assets.xcassets   - Assets of application (ex. images, logo)
│ ├── Constants         - Application constant files
│ │   ├── AppConstants  - Application oriented constants (ex. serverURL)
│ │   ├── StringScheme  - String constants
│ │   ├── ColorConstants - Color constants
│ │   └── FontScheme    - Font Scheme constants
│ ├── Controllers       - Application's ViewControllers files
│ │   ├── cells	       - Folder for Layout and Swift files of cells in ViewController
│ │   │	  ├── generatedCell - Folder for cell layout and class file
│ │   │	  │   ├── generatedCell.xib    - design layout of custom cells
│ │   │	  │   └── generatedCell.swift  - swift file of custom cells
│ │   │   └── cellClass.swift - Adapter classes for CollectionView/TableView of ViewControllers
│ │   ├── layout.xib    - generated design layout of ViewContoller
│ │   └── layout.swift  - generated swift file of ViewContoller 
│ ├── NetworkManager    - REST API setup
│ ├── Resources         - Application Resources (ex. fonts, libraries, splash screen)
│ │   ├── Library       - external component library classes
│ │   ├── Fonts         - application's font files
│ │   └── LaunchScreen.storyboard - Splash screen for application
│ ├── Extension         - iOS Extension Function Files
│ ├── Utilities         - Common classes for application (ex. Utilities, Validation)
│ ├── Models            - Models for REST APIs
│ ├── Helper            - Helper classes for application
│ └── Info.plist        - Permissions and application configuration file
└── Podfile             - specification that describes the dependencies of the targets of one or more projects
```

### Fonts
We were enable to find following Fonts, Please add manually to ```Resources/Fonts```

```
Poppins-SemiBold
Poppins-Bold
Poppins-Medium
Poppins-Regular```