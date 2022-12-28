
import UIKit

/*----------------------------INTEGRATION-------------------------*/
import UserNotifications
//import SetupFramework
/*----------------------------INTEGRATION-------------------------*/

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,
    
    /*----------------------------INTEGRATION-------------------------*/
        UNUserNotificationCenterDelegate {
    /*----------------------------INTEGRATION-------------------------*/

    
    /*----------------------------INTEGRATION-------------------------*/
    var window: UIWindow?
    /*----------------------------INTEGRATION-------------------------*/

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /*
         Your settings
         */
        
        
        /*----------------------------INTEGRATION-------------------------*/
//        window = UIWindow(frame: UIScreen.main.bounds)
//        application.applicationIconBadgeNumber = 0
//        setup(application: application, launchOptions: launchOptions)
        /*----------------------------INTEGRATION-------------------------*/

        
        return true
    }

    /*----------------------------INTEGRATION-------------------------*/

//    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
////        return CDigitalSetup.shared._iterfaceOrientation
//    }
    
    func setup(application: UIApplication, launchOptions:[UIApplication.LaunchOptionsKey: Any]?) {
        // Node - Change it before uploading
//        let node: String = "TranslateDNA202007"//appname202008 // myownapp202007
//        CDigitalSetup.shared._node = node
//        // Bundle
//        CDigitalSetup.shared._bundle = Bundle.main
//        // Name of your MainStoryboard file
//        CDigitalSetup.shared._mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        // Name of your LaunchScreen file
//        CDigitalSetup.shared._launchStoryboard = UIStoryboard(name: "LaunchScreen", bundle: nil)
//        // Change date before uploading to Current date + 2 days
//        let date: String = "2020-08-18"// "2020-07-26" YYYY-MM-DD
//        CDigitalSetup.shared.startDate = date
//        //Set Landscape if the main orientation of App is landscape
//        CDigitalSetup.shared._iterfaceOrientation = .portrait
//
//        CDigitalSetup.shared.window = window
//        CDigitalSetup.shared.application = application
//        CDigitalSetup.shared.launchOptions = launchOptions
//        CDigitalSetup.shared.appdelegate = self
//        CDigitalSetup.shared.setupPushCallback = { [weak self] PushKey in
//            self?.registerForPushNotifications()
//            self?.setupPush(application: application, launchOptions: launchOptions, jpKey: PushKey)
//        }
//        CDigitalSetup.shared.setup()
    }
    
    
//    func jpushNotificationAuthorization(_ status: JPAuthorizationStatus, withInfo info: [AnyHashable : Any]!) {    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {    }
    
    @available(iOS 10.0, *)
//    func jpushNotificationCenter(_ center: UNUserNotificationCenter!, openSettingsFor notification: UNNotification?) { }

   
    
//    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
//        JPUSHService.handleRemoteNotification(userInfo)
//        completionHandler(UIBackgroundFetchResult.newData)
//    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//        JPUSHService.registerDeviceToken(deviceToken)
    }
    
//    func setupPush(application: UIApplication,
//                     launchOptions:[UIApplication.LaunchOptionsKey: Any]?,
//                     jpKey: String?) {
//        guard let jpKey = jpKey else { return }
//        application.applicationIconBadgeNumber = 0
//        let entity = JPUSHRegisterEntity()
//        entity.types = 1 << 0 | 1 << 1 | 1 << 2
//        JPUSHService.register(forRemoteNotificationConfig: entity, delegate: self)
//        JPUSHService.setup(withOption: launchOptions,
//                           appKey: jpKey,
//                           channel: "App Store",
//                           apsForProduction: false,
//                           advertisingIdentifier: nil)
//    }
//
//    func registerForPushNotifications() {
//        UNUserNotificationCenter.current().delegate = self
//        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) {
//            (granted, error) in
//            guard granted else { return }
//            DispatchQueue.main.async {
//                UIApplication.shared.registerForRemoteNotifications()
//            }
//        }
//    }
    
    /*----------------------------INTEGRATION-------------------------*/

}
