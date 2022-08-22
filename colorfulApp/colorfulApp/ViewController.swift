//
//  ViewController.swift
//  colorfulApp
//
//  Created by الهنوف عبدالله  on 21/08/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var arryColors = ["Red", "Blue", "Black", "Orange ", "Purple"]
    var arryList = [ UIColor.red , UIColor.blue , UIColor.blue, UIColor.orange ,UIColor.purple ]
    
    var index:Int?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let colors = tableView.dequeueReusableCell(withIdentifier: "colorful", for: indexPath)
        colors.textLabel?.text = "\(arryColors[indexPath.row])"
        colors.backgroundColor = arryList[indexPath.row]
        
        return colors
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        index = indexPath.row
        performSegue(withIdentifier: "colorSeg", sender: nil)
    }

    @IBOutlet weak var tableViewColor: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewColor.dataSource = self
        tableViewColor.delegate = self
        // Do any additional setup after loading the view.
    }


}

