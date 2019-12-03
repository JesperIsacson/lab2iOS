//
//  SkillsViewController.swift
//  lab2iOs
//
//  Created by Ulf Jesper Isacson on 2019-11-15.
//  Copyright © 2019 Jesper Isacson. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelOne.alpha = 0
        self.labelTwo.alpha = 0
        self.labelThree.alpha = 0

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animate(withDuration: 1.5) {
            self.labelOne.alpha = 1.0
            self.labelTwo.alpha = 1.0
            self.labelThree.alpha = 1.0
        }
    }
    
    @IBAction func exitSkillsViewController(_ sender: Any)
    {
        self.dismiss(animated: true, completion:
        {
            self.presentingViewController?.dismiss(animated: true, completion: nil)
        })
    }
    

    
}
