//
//  ViewController.swift
//  RealAppProjectWithUikit
//
//  Created by Diar Orynbek on 13.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "sift")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Hello, World"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        
        return label
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Press me", for: .normal)
        
        return button
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
       // setupLayout()
        
    }
    
    
    // MARK: - SetupView
    private func setupView() {
        view.addSubview(button)
        view.addSubview(label)
        view.addSubview(imageView)
    }
    
    // MARK: - SetupLayout
//    private func setupLayout() {
//        label.snp.makeConstraints{ make in
//            make.center.equalTo(view)
//            make.left.equalTo(view).offset(100)
//            make.right.equalTo(view).offset(-100)
//        }
//        
//    }
}

