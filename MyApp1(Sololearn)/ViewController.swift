//
//  ViewController.swift
//  MyApp1(Sololearn)
//
//  Created by Juuso Loikkanen on 8.11.2022.
//  Copyright © 2022 Simo Loikkanen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var nameLabel: UILabel!
    
   
    @IBOutlet weak var nameTextField: UITextField!
    
     
    @IBAction func setLabelText(_ sender: Any) {
        nameLabel.text = nameTextField.text
    }
    
    var item: Item?
    // Outlet, not action!!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
        dismiss(animated: true, completion: nil)
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        }
        else {
            navigationController!.popViewController(animated: true)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
            let name = nameTextField.text ?? ""
            item = Item(name: name)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let item = item {
            nameTextField.text = item.name
        }// Do any additional setup after loading the view, typically from a nib.
    }

}


