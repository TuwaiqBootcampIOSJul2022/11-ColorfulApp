//
//  ViewController.swift
//  TableOfColors
//
//  Created by NosaibahMW on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arrayOfColors: [UIColor] = [.systemPink,.systemRed,.systemOrange,.systemYellow,.systemGreen,.systemMint,.systemTeal,.systemCyan,.systemBlue,.systemIndigo,.systemPurple,.systemBrown,.systemGray]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
        cell.backgroundColor = arrayOfColors[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showColorSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? SecondViewController {
            secondVC.color = arrayOfColors[sender as! Int]
        }
    }
}

