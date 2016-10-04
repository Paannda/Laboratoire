//
//  ViewController.swift
//  Laboratoire iOS
//
//  Created by Simon Méra on 16-09-27.
//  Copyright © 2016 ETS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

  var ClubArray:NSArray = []
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let path = Bundle.main.path(forResource: "Club_List", ofType: "plist")
    ClubArray = NSArray(contentsOfFile: path!)!
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBOutlet weak var appTableView: UITableView!

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ClubArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell")!
    
    cell.textLabel?.text = "Test"
    cell.detailTextLabel?.text = "Sous-titre #\(indexPath.row)"
    cell.imageView?.image = UIImage(named: "ic_clubs/ic_ace.png")
    return cell
  }
}

