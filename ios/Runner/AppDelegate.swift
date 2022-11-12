import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      
    weak var nativeRegistrar = self.registrar(forPlugin: "NativeViewPlugin")

    let nativeFactory = NativeViewFactory(messenger: nativeRegistrar!.messenger())
    self.registrar(forPlugin: "<NativeViewPlugin>")!.register(
        nativeFactory,
        withId: "plugin/native_widget")
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
