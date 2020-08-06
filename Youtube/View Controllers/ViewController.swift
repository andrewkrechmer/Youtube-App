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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Confirm that a video was selected
        guard tableView.indexPathForSelectedRow != nil else {
            return
        }
        
        // Get a reference to the video that was tapped on
        let selectedVideo = videos[tableView.indexPathForSelectedRow!.row]
        
        // Get a reference to the detailViewController
        let detailVC = segue.destination as! DetailViewController
        
        // Set a video property of the detailViewController
        detailVC.video = selectedVideo
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
           
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as! VideoTableViewCell
        
        // Configure the cell with the data
        let video = self.videos[indexPath.row]
        
        cell.setCell(video)
        
        //Return the cell
        return cell
        
       }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

