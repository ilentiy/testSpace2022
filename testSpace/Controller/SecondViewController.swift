//
//  SecondViewController.swift
//  testSpace
//
//  Created by Илья on 15.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var contenView1: UIView!
    @IBOutlet weak var contenView2: UIView!
    @IBOutlet weak var contenView3: UIView!
    
    @IBOutlet weak var rocketImageFall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        contenView1.layer.masksToBounds = true
        contenView1.layer.cornerRadius = 24
        
        contenView2.layer.masksToBounds = true
        contenView2.layer.cornerRadius = 24
        
        contenView3.layer.masksToBounds = true
        contenView3.layer.cornerRadius = 24
        
        rocketImageFall.transform = CGAffineTransform(rotationAngle: Double.pi)
    }
    


}
