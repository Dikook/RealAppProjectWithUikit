//
//  SomeViewController.swift
//  RealAppProjectWithUikit
//
//  Created by Diar Orynbek on 14.06.2024.
//

import UIKit

final class SomeViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func loadView() {
        self.view = NewView()
    }
}

final class NewView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
