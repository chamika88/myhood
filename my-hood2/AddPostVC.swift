//
//  AddPostVC.swift
//  my-hood2
//
//  Created by Chamikara Dharmasena on 7/24/16.
//  Copyright © 2016 Chamikara Dharmasena. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var postImg: UIImageView!
    
    @IBOutlet weak var titleField: UITextField!
    
    @IBOutlet weak var descField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postImg.layer.cornerRadius = postImg.frame.width / 2
        postImg.clipsToBounds = true
    }

   
    
    @IBAction func addPicBtnPressed(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func makePostBtnPressed(sender: AnyObject) {
    }
    
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
