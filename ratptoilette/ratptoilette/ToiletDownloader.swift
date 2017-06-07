//
//  ToiletteRetriever.swift
//  ratptoilette
//
//  Created by etudiant on 07/06/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import Foundation

class ToiletDownloader{
    
    class func load(url: URL) {
        let localURL : URL
        localURL=URL.init(string: "toilets.txt")!
        let sessionConfig = URLSessionConfiguration.default
    let session = URLSession(configuration: sessionConfig)
    var request = try! URLRequest(url: url)
    request.httpMethod="GET"
    let task = session.downloadTask(with: request) { (tempLocalUrl, response, error) in
        if let tempLocalUrl = tempLocalUrl, error == nil {
            // Success
            if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                print("Success: \(statusCode)")
            }
            
            do {
                try FileManager.default.copyItem(at: tempLocalUrl, to: localURL)
            } catch (let writeError) {
                print("error writing file \(localURL) : \(writeError)")
            }
            
        } else {
            print("Failure: %@", error?.localizedDescription);
        }
    }
        do{
        let path = Bundle.main.path(forResource: "toilets", ofType: "txt")
        let text =  try String(contentsOfFile: path!)
        print(text)}
        catch{}
        
    task.resume()
}
}
