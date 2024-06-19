//
//  ViewController.swift
//  RealAppProjectWithUikit
//
//  Created by Diar Orynbek on 13.06.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Hello, World"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        
        return label
    }()
    
    private lazy var blackButton: UIButton = {
        let button = UIButton()
        button.setTitle("Круг", for: .normal)
        
        return button
    }()
    
    private lazy var greenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Старт", for: .focused)
        
        return button
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupLayout()
        
    }
    
    // MARK: - SetupView
    private func setupView() {
        view.addSubview(blackButton)
        view.addSubview(greenButton)
    }
    
    // MARK: - SetupLayout
    private func setupLayout() {
        blackButton.snp.makeConstraints{ make in
            make.width.equalTo(300)
            make.height.equalTo(100)
            make.center.equalToSuperview()
        }
        
        blackButton.snp.makeConstraints{ make in
            make.width.equalTo(300)
            make.height.equalTo(100)
            make.center.equalToSuperview()
        }
    }
}

