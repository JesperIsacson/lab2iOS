//
//  DetailExperienceController.swift
//  lab2iOs
//
//  Created by Ulf Jesper Isacson on 2019-11-10.
//  Copyright © 2019 Jesper Isacson. All rights reserved.
//

import UIKit

class DetailExperienceController: UIViewController
{

    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDates: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    
    var titleDetail: String = ""
    var datesDetail: String = ""
    var imageDetail = UIImage(systemName: "hare.fill")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titleDetail
        detailTitle.text = titleDetail
        detailDates.text = datesDetail
        detailImage.image = imageDetail
        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
