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
    lazy var redSView = UIView(frame: .zero)
    lazy var greenSView = UIView(frame: .zero)
    lazy var blueSView = UIView(frame: .zero)
    lazy var yellowSView = UIView(frame: .zero)
    lazy var orangeSView = UIView(frame: .zero)
    let boxWidth: CGFloat = 100
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "sec")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var blackButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.setTitle("Круг", for: .normal)
        button.layer.cornerRadius = 50
        return button
    }()
    
    private lazy var greenButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Старт", for: .normal)
        button.layer.cornerRadius = 50
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
        view.backgroundColor = .black
        
        redSView.backgroundColor = .red
        greenSView.backgroundColor = .green
        blueSView.backgroundColor = .blue
        yellowSView.backgroundColor = .yellow
        orangeSView.backgroundColor = .orange
        
        [redSView, greenSView, blueSView, yellowSView, orangeSView].forEach { box in
            view.addSubview(box)
        }
        
        view.addSubview(blackButton)
        view.addSubview(greenButton)
        view.addSubview(imageView)
    }
    
    // MARK: - SetupLayout
    private func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(-50)
        }
        
        blackButton.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.centerY.leading.equalTo(40)
            make.top.equalTo(476)
        }

        greenButton.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.centerY.right.equalTo(-40)
            make.top.equalTo(476)
        }
    }
}

