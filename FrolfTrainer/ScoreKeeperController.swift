//
//  ScoreKeeperController.swift
//  FrolfTrainer
//
//  Created by Benjamin Naugle on 6/28/16.
//  Copyright © 2016 MediocreApps. All rights reserved.
//

import Foundation
import UIKit

class ScoreKeeperController: UIViewController, UINavigationControllerDelegate, ScoreKeeperViewDelegate {
    
    var scoreKeeperView: ScoreKeeperView {return view as! ScoreKeeperView}
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view = ScoreKeeperView(frame: UIScreen.mainScreen().bounds)
        self.navigationItem.title = "Score Card"
        self.edgesForExtendedLayout = UIRectEdge.None
        scoreKeeperView.delegate = self
        
    }
    
    override func loadView() {
        
    }
    
    func setScore() {
        navigationController?.popViewControllerAnimated(true)
    }
    
}