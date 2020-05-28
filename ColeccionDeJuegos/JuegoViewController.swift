//
//  JuegoViewController.swift
//  ColeccionDeJuegos
//
//  Created by mbtec22 on 5/28/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit

class JuegoViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var RoundStyleTextField: UITextField!
    
    var imagePicker = UIImagePickerController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate=self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func fotosTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker,animated: true,completion: nil)
       
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        let imagenSeleccionada = info[UIImagePickerControllerOriginalImage] as! UIImage
        ImageView.image = imagenSeleccionada
        imagePicker.dismiss(animated: true, completion: nil)
    
    }
    
    @IBAction func cameraTapped(_ sender: Any) {
  
        
    }
    
    @IBAction func agregarTapped(_ sender: Any) {
        
       
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
