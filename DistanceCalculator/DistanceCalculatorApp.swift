import SwiftUI
import GoogleMaps

let APIKey = "AIzaSyCgJPLzCu6ZuGQWURT0L0BlxWTu6q0Ob9E"

@main
struct DistanceCalculatorApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
         GMSServices.provideAPIKey(APIKey)
         return true
     }
 }
