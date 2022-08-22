
import UIKit

class ViewController: UIViewController , UITableViewDataSource{
    
    var colors = [Color(name:"red",uiColor:UIColor.red),
                  Color(name:"orange",uiColor:UIColor.orange),
                  Color(name:"yellow",uiColor:UIColor.yellow),
                  Color(name:"green",uiColor:UIColor.green),
                  Color(name:"blue",uiColor:UIColor.blue),
                  Color(name:"purple",uiColor:UIColor.purple),
                  Color(name:"brown",uiColor:UIColor.brown),
                  Color(name:"gray",uiColor:UIColor.gray),
                  Color(name:"white",uiColor:UIColor.white),
                  Color(name:"black",uiColor:UIColor.black),]
    
    var color:UIColor?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        color = colors[indexPath.row].uiColor
        performSegue(withIdentifier: "identifier", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="identifier"{
            if let a = segue.destination as? ViewController1{
                a.colorVC = color
            } }}}

struct Color {
    let name :String
    let uiColor:UIColor
}
