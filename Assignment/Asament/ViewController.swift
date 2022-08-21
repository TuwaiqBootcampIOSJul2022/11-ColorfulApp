//
//  ViewController.swift
//  Asament
//
//  Created by Kholoud Almutairi on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    
    
    let colorArray = [UIColor.yellow,UIColor.cyan,UIColor.gray , UIColor.orange , UIColor.green  , UIColor.purple
                     , UIColor.white , UIColor.brown  , UIColor.black ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellColor", for: indexPath)
        
        cell.contentView.backgroundColor = colorArray[indexPath.row]
        

        
        return cell
    }
    

    
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ShowbacckColor", sender: indexPath.row)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let view3 = segue.destination as? ViewController2{
            
            
            view3.view.backgroundColor = colorArray[sender as! Int]
            
        }
    }
  
   


}

