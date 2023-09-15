//
//  HomeView.swift
//  myAssets
//
//  Created by Bruno Ornelas on 05/09/23.
//

import UIKit

class HomeView: UIView {
    
    internal lazy var findBtn: UIButton = {
        
        var config = UIButton.Configuration.filled()
        config.title = "Buscar Ativo"
        config.baseBackgroundColor = .blue
        config.baseForegroundColor = .black
        config.buttonSize = .medium
        config.cornerStyle = .small
        
        let btn = UIButton(configuration: config)
       // btn.addTarget(<#T##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return btn
    }()
    
    internal lazy var findText: UITextField = {
        
        let find = UITextField(frame: .zero)
        find.translatesAutoresizingMaskIntoConstraints = false
        find.keyboardType = .namePhonePad
        find.placeholder = "Digite o ticket do ativo ex: PETR4"
        find.borderStyle = .roundedRect
        return find
        
    }()
    
}
