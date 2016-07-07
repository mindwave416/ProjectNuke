//
//  ScoreCardController.swift
//  FrolfTrainer
//
//  Created by Benjamin Naugle on 7/6/16.
//  Copyright © 2016 MediocreApps. All rights reserved.
//

import Foundation
import UIKit

class ScoreCardController: UIViewController, UINavigationControllerDelegate, ScoreCardDelegate {
    
    var scoreCardView: ScoreCardView {return view as! ScoreCardView}
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view = ScoreCardView(frame: UIScreen.mainScreen().bounds)
        self.navigationItem.title = "Score Card"
        self.edgesForExtendedLayout = UIRectEdge.None
        scoreCardView.scoreCardDelegate = self
        
    }
    
    override func loadView() {
        
    }
    
    func pushScoreKeeper(){
        navigationController?.pushViewController(ScoreKeeperController(), animated: true)
    }
    
}