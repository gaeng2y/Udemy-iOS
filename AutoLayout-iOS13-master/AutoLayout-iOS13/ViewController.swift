//
//  ViewController.swift
//  AutoLayout-iOS13
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(imageLiteralResourceName: "GreenBackground"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(imageLiteralResourceName: "DiceeLogo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var diceImageView1: UIImageView = {
        let imageView = UIImageView(image: UIImage(imageLiteralResourceName: "DiceOne"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var diceImageView2: UIImageView = {
        let imageView = UIImageView(image: UIImage(imageLiteralResourceName: "DiceOne"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var rollButton: UIButton = {
        let button = UIButton()
        button.setTitle("Roll", for: .normal)
        button.backgroundColor = .systemPink
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.addTarget(self, action: #selector(onClickRoll(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // background
        self.view.addSubview(backgroundImageView)
        [backgroundImageView.topAnchor.constraint(equalTo: self.view.topAnchor),
         backgroundImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
         backgroundImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
         backgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)].forEach { contstraint in
            contstraint.isActive = true
        }
        
        self.view.addSubview(logoImageView)
        [logoImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150),
         logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
         logoImageView.heightAnchor.constraint(equalToConstant: 70),
         logoImageView.widthAnchor.constraint(equalToConstant: 200)].forEach { constraint in
            constraint.isActive = true
        }
        
        self.view.addSubview(diceImageView1)
        [diceImageView1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300),
         diceImageView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
         diceImageView1.heightAnchor.constraint(equalToConstant: 120),
         diceImageView1.widthAnchor.constraint(equalToConstant: 120)].forEach { constraint in
            constraint.isActive = true
        }
        
        self.view.addSubview(diceImageView2)
        [diceImageView2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300),
         diceImageView2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
         diceImageView2.heightAnchor.constraint(equalToConstant: 120),
         diceImageView2.widthAnchor.constraint(equalToConstant: 120)].forEach { constraint in
            constraint.isActive = true
        }
        
        self.view.addSubview(rollButton)
        [rollButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
         rollButton.heightAnchor.constraint(equalToConstant: 70),
         rollButton.widthAnchor.constraint(equalToConstant: 150),
         rollButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)].forEach { constraint in
            constraint.isActive = true
        }
    }
    
    @objc private func onClickRoll(_ sender: UIButton) {
        let diceImageList = [UIImage(imageLiteralResourceName: "DiceOne"),
                             UIImage(imageLiteralResourceName: "DiceTwo"),
                             UIImage(imageLiteralResourceName: "DiceThree"),
                             UIImage(imageLiteralResourceName: "DiceFour"),
                             UIImage(imageLiteralResourceName: "DiceFive"),
                             UIImage(imageLiteralResourceName: "DiceSix"),]
        diceImageView1.image = diceImageList.randomElement()
        diceImageView2.image = diceImageList.randomElement()
    }
}
