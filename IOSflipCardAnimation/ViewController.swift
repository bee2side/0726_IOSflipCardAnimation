//
//  ViewController.swift
//  IOSflipCardAnimation
//
//  Created by Doris on 2020/07/26.
//  Copyright © 2020 kakao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var kakaoCertificationBar: UIButton!
    @IBOutlet weak var certificationBar: UIButton!
    let iconKakaoCerification = UIImage(named: "ico_certification_b")
    let iconCerification = UIImage(named: "ico_certification")
    let kakaoconLogo = UIImage(named: "commonIcoTitle")
    let yourBackImage = UIImage(named: "wallet_commonBtnBack")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage() //navigationbar border remove
        navigationController?.navigationBar.topItem!.title = ""
        navigationController?.navigationBar.tintColor = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        navigationItem.titleView = UIImageView(image: kakaoconLogo)
        
        // kakao ID card
        kakaoCertificationBar.setImage(iconKakaoCerification, for: .normal)
        kakaoCertificationBar.setTitle("Kakao ID Card", for: .normal)
        kakaoCertificationBar.backgroundColor = UIColor(red: 254/255, green: 229/255, blue: 0/255, alpha: 1)
        kakaoCertificationBar.setTitleColor(UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1), for: .normal)
        kakaoCertificationBar.tintColor = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        kakaoCertificationBar.imageEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
        kakaoCertificationBar.titleEdgeInsets = UIEdgeInsets(top: 0, left: 17, bottom: 0, right: 0)
        kakaoCertificationBar.layer.cornerRadius = 10
        kakaoCertificationBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        // kakao Unit card
        certificationBar.setImage(iconCerification, for: .normal)
        certificationBar.setTitle("Kakao Unit Card", for: .normal)
        certificationBar.backgroundColor = UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1)
        certificationBar.setTitleColor(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), for: .normal)
        certificationBar.tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        certificationBar.imageEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
        certificationBar.titleEdgeInsets = UIEdgeInsets(top: 0, left: 17, bottom: 0, right: 0)
        certificationBar.layer.cornerRadius = 10
        certificationBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        self.navigationController?.navigationBar.backIndicatorImage = yourBackImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = yourBackImage
        self.navigationController?.navigationBar.backItem?.title = ""
//        self.navigationController?.navigationBar.frame = CGRect(x: -100, y: -100, width: 240, height: 240)
        
        
    }
}

class UIRoundPrimaryButton: UIButton{
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 15.0;
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.14).cgColor
        self.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.tintColor = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
    }
    
}
