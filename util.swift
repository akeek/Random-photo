//
//  util.swift
//  RandomPhoto
//
//  Created by Åke Ek on 04/09/2023.
//

import UIKit

var aView: UIView?


extension UIViewController {
    func showSpinner () {
        aView = UIView(frame: self.view.bounds)
        aView?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        
        let ai = UIActivityIndicatorView(style: .large)
        ai.center = aView!.center
        ai.startAnimating()
        aView?.addSubview(ai)
        self.view.addSubview(aView!)
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (t) in self.removeSpinner()}
    }
    
    func removeSpinner (){
        aView?.removeFromSuperview()
        aView = nil
    }
}
