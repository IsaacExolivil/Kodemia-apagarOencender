//
//  ViewController.swift
//  ApagaroEncender
//
//  Created by Isaac on 07/03/22.
//

import UIKit

class ViewController:
    UIViewController {
    
    @IBOutlet weak var SwitchView: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let isOn = UserDefaults.standard.bool(forKey: "switch")
        actualizarFondo(isOn: isOn)
        
    }
    
    @IBAction func btnSwitch(_ sender: UISwitch) {
        actualizarFondo(isOn: sender.isOn)
        UserDefaults.standard.setValue(sender.isOn, forKey: "switch")
        
    }
    
    private func actualizarFondo(isOn: Bool) {
        view.backgroundColor = isOn ? .orange : .green
        SwitchView.isOn = isOn
        
    }
    


}

