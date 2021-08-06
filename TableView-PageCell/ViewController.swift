//
//  ViewController.swift
//  TableView-PageCell
//
//  Created by Kirow on 06.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let vColors: [UIColor] = [.red, .blue, .orange, .brown, .cyan, .darkGray, .green, .red, .blue, .orange, .brown, .cyan, .darkGray, .green]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PageCell", for: indexPath) as! PageCell
        cell.vwPage.backgroundColor = vColors[indexPath.row]
        cell.viewHeight.constant = tableView.frame.size.height
        
        return cell
    }
    
}


class ViewController2: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let vColors: [UIColor] = [.red, .blue, .orange, .brown, .cyan, .darkGray, .green, .red, .blue, .orange, .brown, .cyan, .darkGray, .green]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController2: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PageCell", for: indexPath) as! PageCell
        cell.vwPage.backgroundColor = vColors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.size.height
    }
}
