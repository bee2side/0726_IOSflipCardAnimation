//
//  CardviewViewController.swift
//  IOSflipCardAnimation
//
//  Created by Doris on 2020/07/26.
//  Copyright © 2020 kakao. All rights reserved.
//

import UIKit

class CardviewViewController: UIViewController {
    @IBOutlet weak var idCard: UIImageView!
    
    var isOn = true
    let idCardFrontImage = UIImage(named: "idCard_front")
    let idCardBackImage = UIImage(named: "idCard_back")
    var transform = CATransform3DIdentity
    
    func cardFlipAnimation() {
        transform.m34 = 1.0 / 500.0
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveLinear, animations: {
            self.transform = CATransform3DRotate(self.transform, CGFloat(90 * Double.pi / 180), 0, 1, 0)
            self.idCard.layer.transform = self.transform
            
            if self.isOn {
                self.idCard.image = self.idCardFrontImage
            } else {
                self.idCard.image = self.idCardBackImage!.withHorizontallyFlippedOrientation()
            }
 
        }, completion: { (_) in
            UIView.animate(withDuration: 0.25, delay: 0, options: .curveLinear, animations: {
                self.transform = CATransform3DRotate(self.transform, CGFloat(90 * Double.pi / 180), 0, 1, 0)
                self.idCard.layer.transform = self.transform
                
                if self.isOn {
                    self.idCard.image = self.idCardBackImage!.withHorizontallyFlippedOrientation()
                    self.isOn = false
                } else {
                    self.idCard.image = self.idCardFrontImage
                    self.isOn = true
                }
 
            }, completion: { (_) in
                UIView.animate(withDuration: 0.2, delay: 0, options: .curveLinear, animations: {
                    self.transform = CATransform3DRotate(self.transform, CGFloat(10 * Double.pi / 180), 0, 1, 0)
                    self.idCard.layer.transform = self.transform
                    }, completion: { (_) in
                    UIView.animate(withDuration: 0.2, delay: 0, options: .curveLinear, animations: {
                        self.transform = CATransform3DRotate(self.transform, CGFloat(-10 * Double.pi / 180), 0, 1, 0)
                        self.idCard.layer.transform = self.transform
                    })
                })
            })
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        cardFlipAnimation()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(touchToPickPhoto(_:)))
        idCard.addGestureRecognizer(tapGesture)
        idCard.isUserInteractionEnabled = true
    }
    
    @objc func touchToPickPhoto(_ gesture: UITapGestureRecognizer) {
        cardFlipAnimation()
    }
}
