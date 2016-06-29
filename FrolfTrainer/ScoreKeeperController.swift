//
//  ScoreKeeperController.swift
//  FrolfTrainer
//
//  Created by Benjamin Naugle on 6/28/16.
//  Copyright © 2016 MediocreApps. All rights reserved.
//

import Foundation
import UIKit

class ScoreKeeperController: UIViewController, UINavigationControllerDelegate {
    
    var scoreView: ScoreView {return view as! ScoreView}
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view = ScoreView(frame: UIScreen.mainScreen().bounds)
        self.navigationItem.title = "Score Card"
        self.edgesForExtendedLayout = UIRectEdge.None
        
    }
    
    override func loadView() {
        
    }
    
    
}