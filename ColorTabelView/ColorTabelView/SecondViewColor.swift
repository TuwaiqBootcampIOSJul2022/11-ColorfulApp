//
//  SecondViewColor.swift
//  ColorTabelView
//
//  Created by user on 23/01/1444 AH.
//

import UIKit

class SecondViewColor: UIViewController {
    
    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color!
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
