//
//  ViewController.swift
//  FirstApp
//
//  Created by Anastasia Zolotykh on 17.10.17.
//  Copyright © 2017 CSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let perfume = ["Kajal Eau de Parfum", "Lilirose", "Milano Collection 2009", "Milano Collection 2014", "Milano Collection 2011", "Kapsule Woody", "Sun Moon Stars", "Lagerfeld Men", "Saint 2017"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return perfume.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
        cell.textLabel?.text = perfume[indexPath.row]
        cell.imageView?.image = UIImage(named: "\(perfume[indexPath.row]).jpg") ?? UIImage(named: "Kajal Eau de Parfum.jpg")
        
        return cell
    }


}

