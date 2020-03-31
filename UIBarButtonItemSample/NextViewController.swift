//
//  NextViewController.swift
//  UIBarButtonItemSample
//
//  Created by satoshi.marumoto on 2020/03/31.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    var addBarButtonItem: UIBarButtonItem!
    var editBarButtonItem: UIBarButtonItem!
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBarButtonTapped(_:)))
        editBarButtonItem = UIBarButtonItem(title: "編集", style: .done, target: self, action: #selector(editBarButtonTapped(_:)))

        navigationItem.rightBarButtonItems = [editBarButtonItem, addBarButtonItem]
        // 左ボタン配置時に戻るボタンを残すかどうかのフラグ
        navigationItem.leftItemsSupplementBackButton = true
    }

    @objc func addBarButtonTapped(_ sender: UIBarButtonItem) {
        print("【+】ボタンが押された")
    }

    @objc func editBarButtonTapped(_ sender: UIBarButtonItem) {
        print("【編集】ボタンが押された")
    }
}
