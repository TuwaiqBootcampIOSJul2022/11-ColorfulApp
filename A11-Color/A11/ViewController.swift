//
//  ViewController.swift
//  A11
//
//  Created by AlenaziHazal on 23/01/1444 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var colorSend:UIColor = .cyan
    let Array : [UIColor] = [.gray,.lightGray,.blue,.brown,.cyan]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cells", for: indexPath)
        cell.backgroundColor = Array[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        colorSend =  Array[indexPath.row]
        performSegue(withIdentifier: "Color", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Color"{
            if let viewVC = segue.destination as? ColorShowViewController{
                viewVC.nameSend = [colorSend]
            }
        }
    }

}

