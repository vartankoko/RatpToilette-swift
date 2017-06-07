//
//  ToiletAnnotation.swift
//  ratptoilette
//
//  Created by etudiant on 18/05/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import Foundation
import MapKit

class ToiletAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var line: String?
    var station: String?
    var freeAccess: Bool?
    
    init(coords : CLLocationCoordinate2D) {
        self.coordinate = coords
        super.init()
    }
}
