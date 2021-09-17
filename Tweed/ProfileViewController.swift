//
//  ProfileViewController.swift
//  Tweed
//
//  Created by ubicomp on 9/15/21.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var profileName: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var dateOfBirth: UILabel!
    
    @IBOutlet weak var pickDateOfBirth: UIDatePicker!
    
    var userProfileName:String = "Name" {
        didSet{
            DispatchQueue.main.async {
                self.profileName.text = self.userProfileName
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profileName.text = "Name"
        nameTextField.delegate = self
    }
    
    
    func editName(){
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let name = String?(textField.text!){
            // if input is a string then do this
            userProfileName = name
        }
        
        textField.resignFirstResponder()
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
