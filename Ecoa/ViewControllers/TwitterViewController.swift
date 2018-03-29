//
//  TwitterViewController.swift
//  Ecoa
//
//  Created by Orlando Amorim on 09/03/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit
import TwitterKit

class TwitterViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupValues()
    }
    
    fileprivate func setupValues() {
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "ecoaoficial", apiClient: client)
        self.tweetViewDelegate = self
    }
    
    fileprivate func setupUI() {
        self.title = "@ecoa"
        self.view.backgroundColor = UIColor(hexString: "#001440")
        // Set all future tweet views to use dark theme using UIAppearanceProxy
        TWTRTweetView.appearance().theme = .dark
        
        // Use custom colors
        TWTRTweetView.appearance().primaryTextColor = UIColor.white
        TWTRTweetView.appearance().backgroundColor = UIColor(hexString: "#001440")
        TWTRTweetView.appearance().linkTextColor = UIColor(hexString: "#E6D8D8")
    }
}

extension TwitterViewController: TWTRTweetViewDelegate {
    // Swift
    func tweetView(tweetView: TWTRTweetView, didSelectTweet tweet: TWTRTweet) {
        print("Tweet selected: \(tweet)")
    }
    
    // Swift
    func tweetView(_ tweetView: TWTRTweetView, didTap url: URL) {
        // *or* Use a system webview
        let webViewController = UIViewController()
        let webView = UIWebView(frame: webViewController.view.bounds)
        webView.loadRequest(URLRequest(url: url as URL))
        webViewController.view = webView
        self.navigationController!.pushViewController(webViewController, animated: true)
    }
}
