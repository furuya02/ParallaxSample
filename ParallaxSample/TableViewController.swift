//
//  TableViewController.swift
//  ParallaxSample
//
//  Created by hirauchi.shinichi on 2016/12/12.
//  Copyright © 2016年 . All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var images:[UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<10 {
            images.append(UIImage(named: String(format: "photo%3.3d", i))!)
        }
        tableView.separatorStyle = .none
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.photoView.image = images[indexPath.row]
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        for index in tableView.indexPathsForVisibleRows! {
            let cell = tableView.cellForRow(at: index) as! TableViewCell

            let rect = tableView.rectForRow(at:index)
            let rectInTable = tableView.convert(rect, to: tableView.superview)
            let offset = rectInTable.origin.y + rectInTable.height / 2
            let percentage = offset / tableView.bounds.height

            var imageRect = cell.photoView.frame
            imageRect.origin.y = percentage * 100 * -1
            cell.photoView.frame = imageRect
        }
    }
}
