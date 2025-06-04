//
//  CarViewController.swift
//  TestUtitTesting
//
//  Created by Maksym Vitovych on 07.08.2021.
//

import UIKit

class CarViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

