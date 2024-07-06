//
//  ViewController.swift
//  mSwiftNoStoryboard
//
//  Created by Ken Polleck on 7/6/24.
//

import UIKit

// Based on https://dev.to/markmatute/ios-swift-setting-up-project-without-storyboard-45al

/* Steps:
    1. Create a Swift Project (File->New->Project->App)
    2. Delete Main.storyboard
    3. In Project Settings->Build Settings with the (only) Target Selected, find and delete "Main" from UIKit Main Storyboard File Base Name
    4. Also delete Main.storyboard from the Info.plist
    5. Add lines to SceneDelegate scene(scene:session:connectionOptions:) to register ViewController class
 */

class ViewController: UIViewController {
    
    lazy private var sampleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World!"
        label.textColor = UIColor.white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        self.view.addSubview(self.sampleLabel)
        self.setUpConstraints()
    }
    
    func setUpConstraints() {
        let sampleLabelConstraints = [
            self.sampleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.sampleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(sampleLabelConstraints)
    }
}
