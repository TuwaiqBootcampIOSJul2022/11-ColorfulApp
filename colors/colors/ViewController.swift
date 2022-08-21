//
//  ViewController.swift
//  colors
//
//  Created by Ruba on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var c : UIColor?
    let color = [UIColor.red , UIColor.yellow , UIColor.blue ,UIColor.green, UIColor.purple]
    
   
    @IBOutlet weak var table1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return color.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.backgroundColor = color[indexPath.row]
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        c = color[indexPath.row]
        performSegue(withIdentifier: "move1", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "move1"{
            if let vc = segue.destination as? tableViewController{
                vc.c1 = c
            }
        }
    }

}

