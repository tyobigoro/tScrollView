//
//  ViewController.swift
//  tScrollView
//
//  Created by tyobigoro on 2020/05/17.
//  Copyright © 2020 tyobigoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   let scrollView = UIScrollView()
    
    var strs = ["A", "B", "C", "D", "E"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.frame = self.view.frame
        scrollView.backgroundColor = UIColor.red
        scrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(strs.count) , height: self.view.bounds.height)
        self.view.addSubview(scrollView)
        
        //ページングを有効にする
        scrollView.isPagingEnabled = true

        for i in strs.enumerated() {
            
            let label = UILabel(frame: CGRect(x: CGFloat(i.offset)*view.bounds.size.width,
                                              y: 0,
                                              width: view.bounds.size.width,
                                              height: view.bounds.size.height))
            label.textAlignment = .center
            label.backgroundColor = .blue
            label.text = i.element
            
            scrollView.addSubview(label)
        }
    }

}

