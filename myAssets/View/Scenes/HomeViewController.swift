//
//  HomeViewController.swift
//  myAssets
//
//  Created by Bruno Ornelas on 05/09/23.
//

import UIKit
import TinyConstraints

class HomeViewController: UIViewController {
    
    let customView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        layout()
        requestAPI()
    }
    
    func setup() {
        self.view.addSubview(customView.findBtn)
        self.view.addSubview(customView.findText)
    }
    
    func layout() {
        customView.findBtn.rightToSuperview()
        customView.findBtn.topToSuperview(offset: 100)
        customView.findText.topToSuperview(offset: 100)
        
    }
    
    func requestAPI() {
        
    
        let url = URL(string: "https://cotacao.b3.com.br/mds/api/v1/instrumentQuotation/PETR4")!
        
        var request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
               let b3Model = try? JSONDecoder().decode(B3Model.self, from: data)
            } else if let error = error {
                print("HTTP Request Failed \(error)")
            }
        }

        task.resume()
        
    }
}
