//
//  ViewController.swift
//  TableView_Asignment
//
//  Created by Anaal Albeeshi on 24/01/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let colorArray = ["R", "Y", "GN", "B", "W", "P", "GR"]
    var nameSend = ""
    let colors: [UIColor] = [.yellow, .red, .darkGray, .green, .blue, .brown, .green]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    // func 1
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int{
        return colorArray.count
    }


    // func 2
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "c1", for: indexPath) // as! ViewController_2
        cell.textLabel?.text = colorArray[indexPath.row]
        
        // color
        let backgroundView = UIView()
        backgroundView.backgroundColor = colors[indexPath.row % colors.count] //UIColor.red
        cell.selectedBackgroundView = backgroundView
        
        
//        cell.selectionStyle = .none
//        cell.backgroundView.backgroundColor = colors[indexPath.row % colors.count]
//        switch indexPath.row % 7 {
//        case 0:
//               cell.backgroundView.backgroundColor = .yellow
//        case 1:
//               cell.catView.backgroundColor = .pink
//        case 2:
//               cell.catView.backgroundColor = .green
//        case 3:
//               cell.catView.backgroundColor = .blue
//        }
        
        return cell
    }
    
    
     // by -> UITableViewDelegate
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print(colorArray[indexPath.row], indexPath.row)
         nameSend = colorArray[indexPath.row]
         // link Segue
         performSegue(withIdentifier: "move1", sender: nil)
     }
    
}// end of class

