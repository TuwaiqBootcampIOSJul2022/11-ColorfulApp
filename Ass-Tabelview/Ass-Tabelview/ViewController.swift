//
//  ViewController.swift
//  Ass-Tabelview
//
//  Created by Hessa on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabelview: UITableView!
    
    let cellColors : [UIColor] = [.purple,.blue,.cyan,.brown,.gray,.orange,.red]
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tabelview.dequeueReusableCell(withIdentifier: "id", for: indexPath)
        
        cell.contentView.backgroundColor =  cellColors[indexPath.row]
    
        return cell
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2
        vc!.view.backgroundColor = cellColors[indexPath.row]
        let navController = UINavigationController(rootViewController: vc!)
        present(navController, animated: true)
        

         
    }

}
    


