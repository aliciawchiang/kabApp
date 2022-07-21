//
//  statsFileViewController.swift
//  kabApp
//
//  Created by Scholar on 7/21/22.
//

import UIKit

class statsFileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var testing: UILabel!
    
  
    @IBOutlet weak var jarTesting: UILabel!
    
    var trash : [TrashListCD] = []
    func snatchTrash(){
          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
              if let coreDataTrash = try? context.fetch(TrashListCD.fetchRequest()) as? [TrashListCD] {

             trash = coreDataTrash
                  testing.text = String(trash.count)
                  jarTesting.text = (String(trash.count/13))
          }
 }
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
