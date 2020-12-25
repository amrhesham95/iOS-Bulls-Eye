//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Amr Hesham on 25/12/2020.
//  Copyright © 2020 Amr Hesham. All rights reserved.
//

import UIKit
import WebKit

// MARK: - AboutViewController
//
class AboutViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var webView: WKWebView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWebView()
    }

}

// MARK: - Actions
private extension AboutViewController {
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}

// MARK: - Configurations
private extension AboutViewController {
    
    func configureWebView() {
        guard let url = Bundle.main.url(forResource: "Bullseye", withExtension: "html") else {return}
        
        let request = URLRequest(url: url)
        
        webView.load(request)
    }
}
