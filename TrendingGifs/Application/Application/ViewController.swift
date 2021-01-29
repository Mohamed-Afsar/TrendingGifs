//
//  ViewController.swift
//  Application
//
//  Created by Mohamed Afsar on 21/01/21.
//

import UIKit
import Networking

class ViewController: UIViewController {
    
    let giphyService = GiphyService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        giphyService.getTrendingGifs(offset: 10).asObservable().subscribe(onNext: {
            print("$0.data.first.title: \($0.data.first?.title); $0.data.first.id: \($0.data.first?.id)")
        }, onError: {
            print("Error is: \($0)")
        })
    }
}

