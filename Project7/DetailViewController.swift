//
//  DetailViewController.swift
//  Project7
//
//  Created by Ishaq Amin on 04/03/2020.
//  Copyright © 2020 Ishaq Amin. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController, UIWebViewDelegate{
    
    var webview = WKWebView()
    var detailItem: Petition?
    
    override func loadView() {
        webview = WKWebView()
        view = webview
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailItem = detailItem else {return}
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <body>
        \(detailItem.body)
        </body>
        </html>
        """

        webview.loadHTMLString(html, baseURL: nil)
    }
    
    
}
