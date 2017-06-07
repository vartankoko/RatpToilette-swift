//
//  ToiletListViewController.swift
//  ratptoilette
//
//  Created by etudiant on 07/06/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import UIKit
import MapKit

class ToiletListViewController: UIViewController {

    @IBOutlet weak var toiletMapView: MKMapView!
    
    var toilets: [Toilet] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showUsersOnMap()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showUsersOnMap() {
        for toilet in self.toilets {
            let annotation = ToiletAnnotation(coords: toilet.coord!)
            annotation.line = toilet.line
            annotation.station = toilet.station
            annotation.freeAccess = toilet.freeAccess
            self.toiletMapView.addAnnotation(annotation)
        }
    }
    
    func didClickOnPOI(sender: UIButton) {
        let indexOfToilet: Int = sender.tag
        let toilet = self.toilets[indexOfToilet]
        let toiletController: ToiletController = ToiletController(nibName: "ToiletController", bundle: nil,toilet: toilet)
        self.navigationController?.pushViewController(toiletController, animated: true)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
