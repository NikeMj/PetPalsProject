//
//  galleryViewController.swift
//  PetPalsProject
//
//  Created by ADENIKE TOMOMEWO on 8/29/17.
//  Copyright © 2017 ADENIKE TOMOMEWO. All rights reserved.
//

import UIKit

class galleryViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var backOutlet: UIButton!
    
    @IBOutlet weak var nextOutlet: UIButton!
      var imageInt = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        imageInt = 1
        label.text = String("\(imageInt)/8")
        backOutlet.isEnabled = false
    }
   
    @IBAction func nextTapped(_ sender: Any) {
        imageInt += 1
        label.text = String("\(imageInt)/8")
        self.imagaeGal()

    }
    
    @IBAction func backTapped(_ sender: Any) {
        imageInt -= 1
        label.text = String("\(imageInt)/8")
        self.imagaeGal()

    }
    func imagaeGal(){
        if imageInt == 1 {
            backOutlet.isEnabled = false
            imageView.image = UIImage(named: "images2")
        }
        
        if imageInt == 2 {
            backOutlet.isEnabled = true
            imageView.image = UIImage(named: "imageBackground")
        }
        
        if imageInt == 3 {
            
            imageView.image = UIImage(named: "images2")
        }
        
        if imageInt == 4 {
            
            imageView.image = UIImage(named: "images3")
        }
        if imageInt == 5 {
            
            imageView.image = UIImage(named: "images4")
        }
        
        if imageInt == 6 {
            
            imageView.image = UIImage(named: "images5")
        }
        
        if imageInt == 7 {
            nextOutlet.isEnabled = true
            imageView.image = UIImage(named: "images6")
        }
        
        if imageInt == 8 {
            nextOutlet.isEnabled = false
            imageView.image = UIImage(named: "pexels-photo-58997")
        }
        }
    


    }
