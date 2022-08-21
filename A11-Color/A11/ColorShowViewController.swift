//
//  ColorShowViewController.swift
//  A11
//
//  Created by AlenaziHazal on 23/01/1444 AH.
//

import UIKit

class ColorShowViewController: UIViewController {
    var nameSend:[UIColor] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = nameSend.first
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
