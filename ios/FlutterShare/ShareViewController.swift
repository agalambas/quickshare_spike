import UIKit
import Flutter

class ShareViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        showFlutter()
    }

    func showFlutter() {
        let flutterViewController = FlutterViewController(
            project: nil,
            initialRoute: "/quickshare",
            nibName: nil,
            bundle: nil
        )
        addChild(flutterViewController)
        view.addSubview(flutterViewController.view)
        flutterViewController.view.frame = view.bounds
    }
}
