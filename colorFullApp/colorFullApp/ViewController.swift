//
//  ViewController.swift
//  colorFullApp
//
//  Created by Farah Alyousef on 24/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    let cellColors : [UIColor] = [.orange,.blue,.red,.yellow,.black,.purple,.blue]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
        return cellColors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView .dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    
        cell.contentView.backgroundColor  = cellColors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
           let vc = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as? VC2
           vc!.view.backgroundColor = cellColors[indexPath.row]
            
       }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


 




