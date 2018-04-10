//
//  ViewController.swift
//  Homework3_PR
//
//  Created by Pedro Rivera on 4/9/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataModels = [Message]()
    
    @IBOutlet weak var fromNameLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet var messagesButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigatorBar()
        loadMessages()
        configureButtons()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    private func loadMessages(){
        
       dataModels = Message.DefaultData
        
    }
    
    private func configureNavigatorBar(){
        title="Messages"
        setupLeftRefreshButton()
        setupRightEditButton()
    }
    
    private func configureButtons() {
        
        for i in 0..<messagesButtons.count {
            let button = messagesButtons[i]
            button.tag = i + 1
            let messages = dataModels[i]
            button.setTitle(messages.fromName, for: .normal)
        }
        
    }
    
    @IBAction func messageButtonPressed(button: UIButton){
        fromNameLabel.text = dataModels[button.tag - 1].fromName
        bodyLabel.text = dataModels[button.tag - 1].body
        stateLabel.text = String( "Status:  \(dataModels[button.tag - 1].state)").capitalized
    }
    
    @objc private func refreshButtonPressed(){
        
    }
    
    @objc private func editButtonPressed(){
        
    }
    
    
    
    private func setupLeftRefreshButton(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Refresh", style: .plain , target: self, action: Selector(("refreshButtonPressed:")))
        navigationItem.leftBarButtonItem?.tintColor = .darkGray
    }
    
    private func setupRightEditButton(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain , target: self, action: Selector(("editButtonPressed:")))
        navigationItem.rightBarButtonItem?.tintColor = .darkGray
        navigationItem.rightBarButtonItem?.isEnabled = false
    }
}




