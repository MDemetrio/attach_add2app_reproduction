//
//  AppDelegate.swift
//  MyHostApp
//
//  Created by Matheus Antonio de Lima Demetrio on 27/12/24.
//

import UIKit
import Flutter

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    lazy var flutterEngine = FlutterEngine(name: "my_flutter_engine", project: nil, allowHeadlessExecution: true)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        flutterEngine.run()
        let flutterViewController = FlutterViewController(engine: (UIApplication.shared.delegate as! AppDelegate).flutterEngine, nibName: nil, bundle: nil)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = flutterViewController
        self.window?.makeKeyAndVisible()
        return true
    }
}

