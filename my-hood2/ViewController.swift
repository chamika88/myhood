//
//  ViewController.swift
//  my-hood2
//
//  Created by Chamikara Dharmasena on 7/24/16.
//  Copyright © 2016 Chamikara Dharmasena. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var post1 = Post(imagePath: "", title: "post 1", description: "Important description 1")
        var post2 = Post(imagePath: "", title: "post 2", description: "Important description 2")
        var post3 = Post(imagePath: "", title: "post3", description: "Important description 3")
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 83.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
        
    }

}

