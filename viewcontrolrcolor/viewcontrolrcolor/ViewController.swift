//
//  ViewController.swift
//  viewcontrolrcolor
//
//  Created by Masheal abdulrhman on 24/01/1444 AH.
//

import UIKit

 class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
     var co : UIColor?
     let color = [UIColor.orange , UIColor.red , UIColor.green ,UIColor.purple, UIColor.blue]


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
         co = color[indexPath.row]
         performSegue(withIdentifier: "mov", sender: nil)

     }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "mov"{
             if let vc = segue.destination as? tableViewController{
                 vc.coo = co
             }
         }
     }

 }
