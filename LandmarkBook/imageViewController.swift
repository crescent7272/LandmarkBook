//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Ruveyda Hilal Inan on 26/02/21.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var landMarkName: UILabel!
    @IBOutlet weak var landMarkImage: UIImageView!
    
    var selectedName = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        landMarkName.text = selectedName
        landMarkImage.image = selectedImage
    
    
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
