//
//  WebViewRepresentable.swift
//  WebViewSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 10/01/2023.
//

import SwiftUI
import WebKit
  
struct WebViewRepresentable: UIViewRepresentable {
  
    func makeCoordinator() -> WebViewRepresentable.Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: "https://easestservice.com/api/v1/general/inital_payment/1673377681146263") else {
            return  WKWebView()
        }
        
        let request = URLRequest(url: url)
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        DispatchQueue.main.async {
            webView.load(request)
        }
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
     }
    
}

extension WebViewRepresentable {
    class Coordinator: NSObject, WKNavigationDelegate , WKUIDelegate {

        private let parent: WebViewRepresentable
        
        init(_ parent: WebViewRepresentable) {
            self.parent = parent
        }
        
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        }
        
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        }
        
        func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
                decisionHandler(.allow)
                if  let response_ = navigationResponse.response as? HTTPURLResponse {
                    if ((response_.url?.absoluteString ?? "").contains("https://easestservice.com/api/v1/general/payment_success")) {
                        if response_.statusCode == 200 {
                            // here wen need to present succcess view
                         }
                    }
                }
            }
            func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
                decisionHandler(.allow)
            }
        }
    
}
