//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ruveyda Hilal Inan on 26/02/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("Ayasofya")
        landmarkNames.append("Colosseum")
        landmarkNames.append("Eifel Tower")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Taj Mahal")
        
        landmarkImages.append(UIImage(named: "ayasofya")!)
        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "eyfel")!)
        landmarkImages.append(UIImage(named: "greatwall")!)
        landmarkImages.append(UIImage(named: "tajmahal")!)

        navigationItem.title = "Landmark Book"

        
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            landmarkImages.remove(at: indexPath.row)
            landmarkNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        landmarkImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toImageViewController" {
            
            let destinationVC = segue.destination as! imageViewController
            
            destinationVC.selectedName = self.landmarkNames[self.tableView.indexPathForSelectedRow!.row]
            destinationVC.selectedImage = self.landmarkImages[self.tableView.indexPathForSelectedRow!.row]

        }
        
    }
    
}

