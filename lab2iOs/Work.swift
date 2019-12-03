//
//  Work.swift
//  lab2iOs
//
//  Created by Ulf Jesper Isacson on 2019-11-06.
//  Copyright © 2019 Jesper Isacson. All rights reserved.
//

import Foundation


class Work
{
    let imageName: String
    let title: String
    let dates: String
    
    init(imageName: String = "Default", title: String = "Job", dates: String = "unknown")
    {
        self.imageName = imageName
        self.title = title
        self.dates = dates
    }
    
    
}
