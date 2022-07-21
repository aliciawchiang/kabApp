//
//  viewItemViewController.swift
//  kabApp
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class viewItemViewController: UIViewController {
    
    var previousVC = listTrashTableViewController()
    var selectedTrash : TrashListCD?
    
    //outlets
    @IBOutlet weak var trashNameLabel: UILabel!
    @IBOutlet weak var trashPhoto: UIImageView!
    @IBOutlet weak var trashSize: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //changing outlets
        trashNameLabel.text = selectedTrash?.name
        //trashSize.text = selectedTrash?.size
        
        // Do any additional setup after loading the view.
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
