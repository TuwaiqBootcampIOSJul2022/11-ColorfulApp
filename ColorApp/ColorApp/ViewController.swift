import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let colorArray = [["name":"Red","color":UIColor.red],
                      ["name":"Blue","color":UIColor.blue],
                      ["name":"Purple","color":UIColor.purple],
                      ["name":"Brown","color":UIColor.brown],
                      ["name":"Black","color":UIColor.black],
                      ["name":"Pink","color":UIColor.systemPink],
                      ["name":"Cyan","color":UIColor.cyan],
                      ["name":"Green","color":UIColor.green],
                      ["name":"Dark Gray","color":UIColor.darkGray],
                      ["name":"Orange","color":UIColor.orange],
                      ["name":"Yellow","color":UIColor.yellow],
                      ["name":"Magenta","color":UIColor.magenta]]
    
    var color:UIColor?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = colorArray[indexPath.row]["name"] as? String
        cell.textLabel?.textColor = colorArray[indexPath.row]["color"] as? UIColor
        return cell
    }
    

    @IBOutlet weak var colorTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        color = colorArray[indexPath.row]["color"] as? UIColor
        performSegue(withIdentifier: "SendColor", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SendColor"{
            if let viewVC = segue.destination as? ColorBackground{
                viewVC.colorVc = color
            }
        }
    }


}

