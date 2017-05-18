//
//  ToiletController.swift
//  ratptoilette
//
//  Created by etudiant on 18/05/2017.
//  Copyright © 2017 ESGI. All rights reserved.
//

import UIKit

class ToiletController: UIViewController {

    let toilet: Toilet
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?, toilet: Toilet) {
        self.toilet = toilet
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
