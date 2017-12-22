//
//  TextViewController.swift
//  PTT Hot Now
//
//  Created by 黃健偉 on 2017/12/16.
//  Copyright © 2017年 黃健偉. All rights reserved.
//  學習網站：
//  https://github.com/KnucklesHuang/DispBBS-Swift/tree/HotTextBrowser
//

import UIKit

class TextViewController: UIViewController, UIWebViewDelegate {

    var urlString: String!

    @IBOutlet var webView: UIWebView!

    @IBAction func refresh(_ sender: Any) {
        self.webView.reload()
    }
    
    @IBOutlet weak var goBackBtn: UIBarButtonItem!
    
    @IBAction func goBack(_ sender: Any) {
        self.webView.goBack()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL(string: self.urlString)
        let request = URLRequest(url: url!)
        self.webView.loadRequest(request)
        
        self.webView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false

        if self.webView.canGoBack {
            self.goBackBtn.isEnabled = true
        } else {
            self.goBackBtn.isEnabled = false
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
