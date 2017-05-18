//
//  Toilette.swift
//  ratptoilette
//
//  Created by etudiant on 18/05/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import Foundation
import MapKit

class Toilet: NSObject {
    
    var line: String?
    var station: String?
    var publicAccess: Bool
    var freeAccess: Bool
    var zoneType: String?
    var coord: CLLocationCoordinate2D?

    init(line: String, station: String, publicAccess: Bool, freeAccess : Bool ,zoneType: String, coord: CLLocationCoordinate2D) {
        
        self.line = line
        self.station = station
        self.publicAccess = publicAccess
        self.freeAccess = freeAccess
        self.zoneType = zoneType
        self.coord = coord
    }
    
}
