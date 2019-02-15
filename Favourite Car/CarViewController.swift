//
//  CarViewController.swift
//  Favourite Car
//
//  Created by Md Zahidul Islam Mazumder on 5/1/19.
//  Copyright © 2019 Md Zahidul islam. All rights reserved.
//

import UIKit

class CarViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    var photoPicked = false
    
    @IBOutlet weak var carNameTextField: UITextField!
    
    @IBOutlet weak var characterCount: UILabel!
    
    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var selectCarButton: UIButton!
    let photoPicker = UIImagePickerController()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        carNameTextField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let charLength = carNameTextField.text?.count{
            characterCount.text = "\(charLength+1)"
        }
        return true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            photoPicked = true
            carImage.image = selectedImage
            imageArray.insert(selectedImage, at: 0)
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectCar(_ sender: Any) {
        
        
        //photoPicker.allowsEditing=true
        present(photoPicker, animated: true)
    }
    
    @IBAction func saveCar(_ sender: Any) {
        if !photoPicked{
            print("Photo isn't picked")
            return
        }
        if (carNameTextField.text?.isEmpty)! {
            print("Name field is empty")
            return
        }
        if let picName = carNameTextField.text{
            namesArray.insert(picName, at: 0)
            
            if let navController = navigationController{
                navController.popViewController(animated: true)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        photoPicker.delegate = self
        carNameTextField.delegate = self
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
