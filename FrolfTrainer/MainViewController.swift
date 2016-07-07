//
//  MainViewController.swift
//  FrolfTrainer
//
//  Created by Benjamin Naugle on 6/28/16.
//  Copyright © 2016 MediocreApps. All rights reserved.
//
import UIKit

class MainViewController: UITabBarController {
    
    private var scoreCardController: ScoreCardController? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()

        //ICONS & TABS
        let scoreIcon = UIImage(named: "scoreCard.png")
        let scoreTab = UITabBarItem(title: "Score", image: scoreIcon, tag: 1)
        
        //VIEW CONTROLLERS
        scoreCardController = ScoreCardController()
        scoreCardController!.tabBarItem = scoreTab
        
        
        //NAVIGATION WRAPPING THE VIEW CONTROLLERS
        let nav1 = UINavigationController(rootViewController: scoreCardController!)
        
        
        //ARRAY OF THEM FOR THE TAB BAR
        let controllers: [UIViewController] = [nav1]
        
        
        //<3 TAB BAR
        self.viewControllers = controllers
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}