//
//  ViewController.swift
//  deneme3
//
//  Created by Burak Afyonlu on 16.01.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpson = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Simpson(name: "Homer Simpson", image: UIImage(named: "homer")!, job: "Nuclear Safety")
        let marge = Simpson(name: "Marge Simpson", image: UIImage(named: "marge")!, job: "House Wife")
        let bart = Simpson(name: "Bart Simpson", image: UIImage(named: "bart")!, job: "Student")
        let lisa = Simpson(name: "Lisa Simpson", image: UIImage(named: "lisa")!, job: "Student")
        let maggie = Simpson(name: "Maggie Simpson", image: UIImage(named: "maggie")!, job: "Just a Kid")
        
        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimpson[indexPath.row].name
        cell.contentConfiguration = content
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
}

