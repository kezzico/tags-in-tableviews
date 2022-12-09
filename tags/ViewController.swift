//
//  ViewController.swift
//  tags
//
//  Created by lee on 12/9/22.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // get a reference to the tableViewController
        // in the containerView before it is presented.
        if let stvc = segue.destination as? SampleTableViewController {
            // add some random data to present
            stvc.data = (0..<100).map { _ in
                return ["Mario", "Red Fish", "Green Fish"].randomElement() ?? ""
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

