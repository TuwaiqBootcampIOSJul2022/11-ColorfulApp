//
//  ViewController.swift
//  Colors
//
//  Created by REOF ALMESHARI on 21/08/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var color : UIColor?
    let colors : [UIColor] = [.black,.red,.purple,.blue,.lightGray,.brown,.systemPink,.cyan,.green,.systemYellow,.systemMint,.systemOrange,.clear]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "colorVC") as? ColorViewController else{ return}
        vc.color = colors[indexPath.row]
        present(vc, animated: true)
    }


}

