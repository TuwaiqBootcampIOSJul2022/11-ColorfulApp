//
//  ViewController.swift
//  testSun
//
//  Created by Raneem Alkahtani on 21/08/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let colorArray = ["Red","Blue","black","Green","Pink"]
    let backgroundArray = [ UIColor.orange , UIColor.green , UIColor.red , UIColor.purple , UIColor.yellow ]
    let fruitArray = [UIImage(named: "im1") , UIImage(named: "im2") , UIImage(named: "im3") , UIImage(named: "im4") , UIImage(named: "im5")]
    var colorSend:UIColor = .green
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
      // cell.textLabel?.text = colorArray[indexPath.row]
    cell.imageView?.image = fruitArray[indexPath.row]
      
        colorSend = backgroundArray[indexPath.row]
        return cell
    }
     
    
    @IBOutlet weak var tableViewTest: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        colorSend = backgroundArray[indexPath.row]
        performSegue(withIdentifier: "Move", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Move"{
            if let viewVC = segue.destination as? ViewController_2 {
                viewVC.view.backgroundColor = colorSend
            }
        }
    }
}

