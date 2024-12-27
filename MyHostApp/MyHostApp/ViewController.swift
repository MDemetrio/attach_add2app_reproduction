//
//  ViewController.swift
//  MyHostApp
//
//  Created by Matheus Antonio de Lima Demetrio on 27/12/24.
//

import UIKit
import Flutter

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    let button = UIButton(type: .system)
    button.setTitle("Open Flutter", for: .normal)
    button.addTarget(self, action: #selector(openFlutter), for: .touchUpInside)
    button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
    view.addSubview(button)
  }

  @objc func openFlutter() {
    let flutterViewController = FlutterViewController(engine: (UIApplication.shared.delegate as! AppDelegate).flutterEngine, nibName: nil, bundle: nil)
      flutterViewController.modalPresentationStyle = .fullScreen
    present(flutterViewController, animated: true, completion: nil)
  }
}
