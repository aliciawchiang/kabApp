//
//  addTrashViewController.swift
//  kabApp
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class addTrashViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    //OUTLETS
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var trashSizePopUpButton: UIButton!
    @IBOutlet weak var imageDisplay: UIImageView!
    
    //VARIABLES
    var imagePicker = UIImagePickerController()
    var previousVC = listTrashTableViewController()
    var trashSize = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPopUpButton()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }

    //ACTION - done button, store name and size to core data
    @IBAction func doneTapped(_ sender: Any) {
        // we have to grab this view context to be able to work with Core Data
          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            // we are creating a new ToDoCD object here, naming it toDo
            let trash = TrashListCD(entity: TrashListCD.entity(), insertInto: context)

            // if the titleTextField has text, we will call that text titleText
            if let nameText = nameTextField.text {
                // we will take the titleText and assign that value to toDo.name
                // this .name and .important came from the attributes you typed in on the Core Data page!
                trash.name = nameText
            }
            
            
            //trash.size = setPopUpButton()
                
            try? context.save()
          }
    }
    
    //ACTION - photo
    
    @IBAction func takeAPhoto(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func chooseFromLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: Trash Size Pop Up Function
    
    
    func setPopUpButton(){
        
        let optionClosure = {(action : UIAction) in print(action.title)}
        trashSizePopUpButton.menu = UIMenu(children : [
            UIAction(title: "Select Trash Size", state: .on, handler: optionClosure),
            UIAction(title: "Small", state: .off, handler: optionClosure),
            UIAction(title: "Medium", state: .off, handler: optionClosure),
            UIAction(title: "Large", state: .off, handler: optionClosure)
        ])
        
        trashSizePopUpButton.showsMenuAsPrimaryAction = true
        trashSizePopUpButton.changesSelectionAsPrimaryAction = true
        }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageDisplay.image = selectedImage
            imagePicker.dismiss(animated: true, completion: nil)
        }
    }
    
}
