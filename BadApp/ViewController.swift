//
//  ViewController.swift
//  BadApp
//
//  Created by Graeme Read on 22/09/2016.
//  Copyright © 2016 Vualto Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ContainerControllerDelegate,
UITableViewDelegate,
UITableViewDataSource {

    
    func removedContainer() {
        _tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return z!.containers.count
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        
        let thing = z!.containers[indexPath.row] as! Container
        cell.textLabel?.text = thing.name
        cell.textLabel?.textColor = thing.colour
        cell.detailTextLabel?.text = "\(thing.items?.count ?? 0) items"
        
        return cell
    }
    
    override func viewDidLoad() {
        z = ContainerController()
        z?.delegate = self as ContainerControllerDelegate
        _tableView.delegate = self
        _tableView.dataSource = self

    }
    var z: ContainerController?
    @IBOutlet weak var _tableView: UITableView!

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let container = z!.containers[indexPath.row] as! Container
        let itemsNumber = container.items?.count ?? 0
        UIAlertView(title: "Container", message: "Well done, you tapped on a container with \(itemsNumber) items!", delegate: nil, cancelButtonTitle: "OK").show()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let container = z!.containers[indexPath.row] as! Container
            z?.removeContainer(container)
        }
    }
    
        func numberOfSections(in tableView: UITableView) -> Int { return 1 }
}

