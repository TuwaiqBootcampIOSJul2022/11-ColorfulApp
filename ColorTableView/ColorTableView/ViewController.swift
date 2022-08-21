//
//  ViewController.swift
//  ColorTableView
//
//  Created by Maan Abdullah on 21/08/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    let colors: [UIColor] = [.red, .blue, .green, .cyan, .gray, .white, .brown, .darkGray, .orange, .purple, .yellow, .black]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "finalCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "colorMove", sender: indexPath)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let temp = sender as? IndexPath{
            segue.destination.view.backgroundColor = colors[temp.row]
        }}
}

