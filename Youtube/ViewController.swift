//
//  ViewController.swift
//  Youtube
//
//  Created by Andrew Krechmer on 2020-08-05.
//  Copyright © 2020 Andrew Krechmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self // Assign self as tableView's dataSource
        tableView.delegate = self //Assign self as tableView's delegate
        
        model.delegate = self  // Assign self as delegate of the model
        
        model.getVideos()
    
    }
    
    // MARK: - Model Delegate Methods
    func videosFetched(_ videos: [Video]) {
        
        // set the returned videos to our video property
        self.videos = videos
        
        // Refresh the tableView
        tableView.reloadData()
        
    }
    
    // MARK: - TableView Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        // Configure the cell with the data
        // Get the title for the video in question
        let title = self.videos[indexPath.row].title
        
        cell.textLabel?.text = title
        
        //Return the cell
        return cell
        
       }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

