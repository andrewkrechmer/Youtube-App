//
//  Constans.swift
//  Youtube
//
//  Created by Andrew Krechmer on 2020-08-05.
//  Copyright © 2020 Andrew Krechmer. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyDkbwaD1xwWjDMyIrGcq2F55fPZFVc30l4"
    static var PLAYLIST_ID = "UUBJycsmduvYEL83R_U4JriQ"
    static var API_URL =  "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}
