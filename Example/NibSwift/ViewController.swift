//
//  ViewController.swift
//  NibSwift
//
//  Created by nibdevn@gmail.com on 10/11/2020.
//  Copyright (c) 2020 nibdevn@gmail.com. All rights reserved.
//

import UIKit
import NibSwift

class ViewController: UIViewController {
    
    var base1 = "https://api.pexels.com/v1"
    var base2 = "https://api.pexels.com/v1/"
    var path1 = "search"
    var path2 = "/search"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
