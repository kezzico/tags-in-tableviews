//
//  SampleTableViewController.swift
//  tags
//
//  Created by lee on 12/9/22.
//

import UIKit

class SampleTableViewController: UITableViewController {
    
    var data: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "blue-cell", for: indexPath)

        let dataAtIndex = data[indexPath.row]

        // tag can be used to query for a child view
        guard let imageView = cell.contentView.viewWithTag(1) as? UIImageView else {
            return cell
        }
        
        guard let nameLabel = cell.contentView.viewWithTag(2) as? UILabel else {
            return cell
        }
        
        imageView.image = UIImage(named: dataAtIndex)
                
        nameLabel.text = dataAtIndex

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
