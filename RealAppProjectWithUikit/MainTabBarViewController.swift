//
//  ViewController.swift
//  RealAppProjectWithUikit
//
//  Created by Diar Orynbek on 13.06.2024.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomePageViewController())
        let vc2 = UINavigationController(rootViewController: SoonPageViewController())
        let vc3 = UINavigationController(rootViewController: DownloadPageViewController())
        let vc4 = UINavigationController(rootViewController: SearchPageViewController())
        
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        
    }
    
}
