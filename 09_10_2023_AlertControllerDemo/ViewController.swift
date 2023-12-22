//
//  ViewController.swift
//  09_10_2023_AlertControllerDemo
//
//  Created by Vishal Jagtap on 22/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    var alertController : UIAlertController?
    var okAction : UIAlertAction?
    var cancelAction : UIAlertAction?
    var nameTextField : UITextField?
    var passwordTextField : UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btnClick(_ sender: UIButton) {
        if (sender.tag == 0){
            simpleAlert()
        } else if(sender.tag == 1){
            alertWithTextField()
        } else if (sender.tag == 2){
            actionSheetStyleAlert()
        } else if (sender.tag == 3){
            
        } else if(sender.tag == 4){
            
        }
    }
    
    func simpleAlert(){
        alertController = UIAlertController(
            title: "Submit",
            message: "Do you want to submit?",
            preferredStyle: .alert)
        
        okAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: { (action) in
                print("Ok Button Clicked")
            })
                
        cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            (action) in
            print("Cancel Button Clicked")
        }
        
        alertController?.addAction(okAction!)
        alertController?.addAction(cancelAction!)
        
        self.present(alertController!, animated: true)
    }
    
    func alertWithTextField(){
        alertController = UIAlertController(
            title: "Test",
            message: "Enter user name",
            preferredStyle: .alert)
        
        okAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: {
                action in
                print("OK Clicked")
            })
        
        cancelAction = UIAlertAction(
            title: "Cancel",
            style: .default){
                action in
                print("Cancel Clicked")
            }
        
        alertController?.addTextField(configurationHandler: { textfield in
            self.nameTextField = textfield
        })
        
        alertController?.addAction(okAction!)
        alertController?.addAction(cancelAction!)
        self.present(alertController!, animated: true)
    }
    
    func actionSheetStyleAlert(){
        alertController = UIAlertController(
            title: "Test",
            message: "Do you want to submit?",
            preferredStyle: .actionSheet)
        
        okAction = UIAlertAction(title: "Ok", style: .default){
            action in
            print("Ok Clicked")
        }
        
        cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in
            print("Cancel Clicked")
        }
        
        let deleteAction = UIAlertAction(
            title: "Delete",
            style: .destructive){
                action in
                print("Destructive btn clicked")
            }
        
        alertController?.addAction(okAction!)
        alertController?.addAction(cancelAction!)
        alertController?.addAction(deleteAction)
        
        self.present(alertController!, animated: true)
    }
}
