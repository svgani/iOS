//
//  ViewController.swift
//  list
//
//  Created by Amritha Manoharan on 25/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit

 var list = ["work"]
 var detail = ["time"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mytableview: UITableView!

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let cell = mytableview.dequeueReusableCell(withIdentifier : "cell")
        cell?.textLabel?.text = list[indexPath.row]
        cell?.detailTextLabel?.text = "\(detail[indexPath.row])"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
        list.remove(at: indexPath.row)
        detail.remove(at: indexPath.row)
        mytableview.reloadData()
    }
}

    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = list[sourceIndexPath.row]
        list.remove(at: sourceIndexPath.row)
        list.insert(item, at: destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        }
    }
    
    
    
    @IBAction func edit(_ sender: Any) {
        mytableview.isEditing = !mytableview.isEditing
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        mytableview.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

