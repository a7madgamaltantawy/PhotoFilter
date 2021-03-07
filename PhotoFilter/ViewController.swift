//
//  ViewController.swift
//  PhotoFilter
//
//  Created by Ahmed Tantawy on 06/03/2021.
//

import UIKit
import CoreImage

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

   
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var intensity: UISlider!
    
    // property to hold the selected picture
    
    var currentImage : UIImage!
    
    var context : CIContext!
    var currentFilter : CIFilter!

    
    
    
    @IBAction func changeFilter(_ sender: Any) {
    }
    
    @IBAction func save(_ sender: Any) {
    }
    
    @IBAction func intensityChanged(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "YACIFP"
        
        navigationItem.rightBarButtonItem =
            UIBarButtonItem (barButtonSystemItem:.add, target: self, action: #selector(importPicture))
        
        
        
        context = CIContext()
        
        currentFilter = CIFilter(name: "CISepiaTone")
        
        
        
        
        
        
    }


    @objc func importPicture(){
        
        let picker = UIImagePickerController()
        
        picker.allowsEditing = true
        picker.delegate = self
        present(picker , animated: true)
        
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else {return }
        
        dismiss(animated: true)
        currentImage = image
    }
    
    
}

