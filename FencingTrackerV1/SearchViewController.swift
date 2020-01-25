//
//  SearchViewController.swift
//  FencingTrackerV1
//
//  Created by Earlight on 1/20/20.
//  Copyright © 2020 Richard. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    var number: Int = 1
    var names: [String] = ["Richard Lin","Slime","third","fourth","bob","steve","person"]
    
    @IBAction func addRow(_ sender: Any) {
        number = number + 1
        names.append("")
        table.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell else{
            return UITableViewCell()
        }
        if names.count > indexPath.row{
            cell.name.text = names[indexPath.row]
        }
        return cell
    }

    
    


}
