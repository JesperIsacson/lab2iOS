//
//  ExperienceTableViewController.swift
//  lab2iOs
//
//  Created by Ulf Jesper Isacson on 2019-11-02.
//  Copyright © 2019 Jesper Isacson. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController
{

    @IBOutlet var ExperienceTableView: UITableView!
    var rowSelected = 0
    let sections: [String] = ["Jobs", "Education"]
    
    var experiences: [[Work]] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ExperienceTableView.delegate = self
        ExperienceTableView.dataSource = self
        
        var work: [Work] = []
        var education: [Work] = []
        
        for i in 0..<3
        {
            let works = Work(imageName: "\(i+1)", title: "Job \(i+1)", dates: "201\((i)%10) - 201\((i+1)%10)")
            work.append(works)
        }
        let educations = Work(imageName: "\(4)", title: "Education", dates: "2018 - Current")
        education.append(educations)
        experiences.append(work)
        experiences.append(education)
        
        ExperienceTableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return experiences.count
    }
    
    
}

extension ExperienceTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return experiences[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if let cell = ExperienceTableView.dequeueReusableCell(withIdentifier: "ExperienceCell", for: indexPath) as? ExperienceTableViewCell
        {
            let experience = experiences[indexPath.section][indexPath.row]
            cell.coverImageView.image = UIImage(named: experience.imageName)
            cell.titleLabel.text = experience.title
            cell.dateLabel.text = experience.dates
            
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < sections.count {
            return sections[section]
        }

        return nil
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        rowSelected = indexPath.row
        self.performSegue(withIdentifier: "cellView", sender: indexPath)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "cellView")
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let controller = segue.destination as! DetailExperienceController
                let experience = experiences[indexPath.section][indexPath.row]
                controller.imageDetail = UIImage(named: experience.imageName)
                controller.titleDetail = experience.title
                controller.datesDetail = experience.dates
            }
        }
    }
    
}
