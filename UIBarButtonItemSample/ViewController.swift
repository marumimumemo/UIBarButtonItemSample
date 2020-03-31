//
//  ViewController.swift
//  UIBarButtonItemSample
//
//  Created by satoshi.marumoto on 2020/03/31.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pushButton(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "NextViewController", bundle: nil)
        guard let nextView = storyboard.instantiateViewController(withIdentifier: "Next") as? NextViewController else { return }
        navigationController?.pushViewController(nextView, animated: true)
    }
}

