//
//  No Logic.swift
//  Simple app
//
//  Created by Leteef Wyatt on 12/8/21.
//

import Foundation
import AVFoundation
import AVKit
import WebKit
import SwiftUI

struct VideoView: UIViewRepresentable{
    
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://youtu.be/PEnJbjBuxnw/embed/\(videoID)")
        else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
                
                
                
                
                
    }
}
