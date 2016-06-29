//
//  ScoreView.swift
//  FrolfTrainer
//
//  Created by Benjamin Naugle on 6/28/16.
//  Copyright © 2016 MediocreApps. All rights reserved.
//
import UIKit

protocol ScoreViewDelegate: class
{
    
}
class ScoreView: UIView, UITextFieldDelegate
{
    var stdFont = UIFont(name: "AmericanTypewriter-Bold", size: 100)
    var score: UILabel? = nil
    var plusOne: UIButton? = nil
    var minusOne: UIButton? = nil
    
    weak var delegate: ScoreViewDelegate? = nil
//    var keyboardIsShown: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.greenColor()
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ScoreView.keyboardWillShow(_:)), name: UIKeyboardWillShowNotification, object: nil)
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ScoreView.keyboardWillHide(_:)), name: UIKeyboardWillHideNotification, object: nil)
//        
        score = UILabel(frame: CGRectZero)
        score?.text = "0"
        score?.font = stdFont
        score?.textAlignment = .Center
        
        plusOne = UIButton(frame: CGRectZero)
        plusOne?.enabled = true
        plusOne?.addTarget(self, action: #selector(ScoreView.addOne), forControlEvents: .TouchUpInside)
        plusOne?.setTitle("+", forState: .Normal)
        plusOne?.backgroundColor = UIColor.grayColor()
        plusOne?.titleLabel?.font = stdFont
        
        
        minusOne = UIButton(frame: CGRectZero)
        minusOne?.addTarget(self, action: #selector(ScoreView.subtractOne), forControlEvents: .TouchUpInside)
        minusOne?.setTitle("-", forState: .Normal)
        minusOne?.backgroundColor = UIColor.grayColor()
        minusOne?.titleLabel?.font = stdFont
        
        addSubview(plusOne!)
        addSubview(score!)
        addSubview(minusOne!)
        
    }
    
    func addOne(){
        score?.text = String(Int(score!.text!)! + 1)
    }
    func subtractOne(){
        score?.text = String(Int(score!.text!)! - 1)
    }
    override func layoutSubviews() {
        
        plusOne?.frame = CGRectMake(frame.width*9/24, frame.height/6, frame.height/6, frame.height/6)
        score?.frame = CGRectMake(0, frame.height/3, frame.width, frame.height/3)
        minusOne?.frame = CGRectMake(frame.width*9/24, frame.height*4/6, frame.height/6, frame.height/6)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.endEditing(true)
        textField.resignFirstResponder()
        return false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
//    func keyboardWillShow(notification: NSNotification) {
//        if (!keyboardIsShown)
//        {
//            if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
//                self.frame.origin.y -= keyboardSize.height
//                self.setNeedsDisplay()
//                keyboardIsShown = true;
//            }
//        }
//    }
//    
//    func keyboardWillHide(notification: NSNotification) {
//        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
//            self.frame.origin.y += keyboardSize.height
//            self.setNeedsDisplay()
//            keyboardIsShown = false
//        }
//    }



