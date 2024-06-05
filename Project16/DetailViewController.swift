//
//  DetailViewController.swift
//  Project16
//
//  Created by Olha Pylypiv on 16.04.2024.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var city: String?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let city = city else {return}
        guard let url = URL(string: "https://en.wikipedia.org/wiki/" + city) else {return}
        webView.load(URLRequest(url: url))
    }
}
