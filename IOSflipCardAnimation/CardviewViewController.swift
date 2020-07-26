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
    
    let idCardFrontImage = UIImage(named: "idCard_front")
    let idCardBackImage = UIImage(named: "idCard_back")
    var transform = CATransform3DIdentity

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveLinear, animations: {
            self.transform = CATransform3DRotate(self.transform, CGFloat(90 * Double.pi / 180), 0, 1, 0)
            self.idCard.layer.transform = self.transform
        }, completion: { (_) in
            UIView.animate(withDuration: 0.25, delay: 0, options: .curveLinear, animations: {
                self.transform = CATransform3DRotate(self.transform, CGFloat(90 * Double.pi / 180), 0, 1, 0)
                self.idCard.layer.transform = self.transform
                self.idCard.image = self.idCardBackImage!.withHorizontallyFlippedOrientation()
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
    
}
