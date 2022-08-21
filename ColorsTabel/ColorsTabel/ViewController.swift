//
//  ViewController.swift
//  ColorsTabel
//
//  Created by Waad on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
 

    @IBOutlet weak var tabelView: UITableView!
    
   // var colors = ["red","orange","yellow","green","blue","purple"]
    var colorSend = Color(name: "", uiColor: UIColor.clear)
    
    var colors = [Color(name: "red"    ,uiColor:UIColor.red),
                  Color(name: "yellow" ,uiColor:UIColor.yellow),
                  Color(name: "pink"   ,uiColor:UIColor.systemPink),
                  Color(name: "green"  ,uiColor:UIColor.green),
                  Color(name: "orange" ,uiColor:UIColor.orange),
                  Color(name: "purple" ,uiColor:UIColor.purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        
        
        return cell
    }
    
    // action when i selecte a color
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        colorSend = colors[indexPath.row]
        
        performSegue(withIdentifier: "changeColor", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "changeColor"
        {
            if let viewVC = segue.destination as? ViewController2
            {
                viewVC.selectedColor = colorSend
                viewVC.view.backgroundColor = colorSend.uiColor
            
                
            }
        }
    }

        
   }



