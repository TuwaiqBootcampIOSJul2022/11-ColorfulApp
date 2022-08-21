//
//  ViewController.swift
//  ColorTabelView
//
//  Created by user on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var ArrayColor :[UIColor] = [.red,.green,.yellow]
    var ArrayColorName = ["red","green","yellow"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrayColor.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.backgroundColor = ArrayColor[indexPath.row]
        cell.textLabel?.text = ArrayColorName[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //name = ArrayColor[indexPath.row]
       // print(name)
        performSegue(withIdentifier: "Move", sender: indexPath.row)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Move"{
            if let VCview=segue.destination as? SecondViewColor{
                VCview.color = ArrayColor[sender as! Int]
                
                
            }
        }
    }
    
    


}

