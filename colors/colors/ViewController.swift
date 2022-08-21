//
//  ViewController.swift
//  colors
//
//  Created by Faisal Almutairi on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    let colorsArray:[UIColor] = [.black, .green, .white, .yellow, .blue, .gray, .red]
    
    var colorName : UIColor = .white
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let colorCell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        colorCell.backgroundColor = colorsArray[indexPath.row]
        
        return colorCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        colorName = colorsArray[indexPath.row]
        performSegue(withIdentifier: "changeColor", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "changeColor"{
            
            if let colorsC = segue.destination as? ViewController_2{
                
                colorsC.colorsChange = colorName
            }
        }
        
    }

    


}

